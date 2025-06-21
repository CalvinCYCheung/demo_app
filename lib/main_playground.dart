import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar: AppBar(), body: TestPage()));
  }
}

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: TestDropDownList<ListItem>(
            items:
                TestItem.values
                    .map((e) => ListItem(e, label: e.title))
                    .toList(),
            onChanged: (value) {
              log("\x1B[31m$value\x1B[0m");
            },
            selected: ListItem(TestItem.a, label: TestItem.a.title),
          ),
        ),
      ],
    );
  }
}

abstract class DropDownItem {
  final String label;
  get type;

  DropDownItem(this.label);
}

enum TestItem {
  a,
  b,
  c,
  d;

  String get title {
    return switch (this) {
      a => "A",
      b => "B",
      c => "C",
      d => "D",
    };
  }
}

class ListItem<T> extends DropDownItem {
  final TestItem value;

  ListItem(this.value, {required String label}) : super(label);

  @override
  get type => value;

  @override
  bool operator ==(Object other) {
    return other is ListItem<T> &&
        runtimeType == other.runtimeType &&
        value == other.value;
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);
}

class TestDropDownList<T extends DropDownItem> extends StatefulWidget {
  const TestDropDownList({
    super.key,
    required this.items,
    required this.onChanged,
    this.selected,
  });
  final List<T> items;
  final ValueChanged<T> onChanged;
  final T? selected;

  @override
  State<TestDropDownList<T>> createState() => _TestDropDownListState<T>();
}

class _TestDropDownListState<T extends DropDownItem>
    extends State<TestDropDownList<T>> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: DropdownButtonFormField(
            items:
                widget.items
                    .map(
                      (e) => DropdownMenuItem(value: e, child: Text(e.label)),
                    )
                    .toList(),
            onChanged: (val) {
              widget.onChanged(val as T);
            },
            value: widget.selected,
          ),
        ),
      ],
    );
  }
}

class ScrollList extends StatefulWidget {
  const ScrollList({super.key});

  @override
  State<ScrollList> createState() => _ScrollListState();
}

class _ScrollListState extends State<ScrollList> {
  late AsyncState _state;
  late List<Cat> _cats;

  AsyncState _loadingMore = AsyncIdle();

  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _init();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  void _init() async {
    _state = await _loadData();
    switch (_state) {
      case AsyncLoading():
        return;
      case AsyncFailure():
        return;
      case AsyncSuccess():
        setState(() {
          _cats = (_state as AsyncSuccess<List<Cat>>).data;
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_state is AsyncLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (_state is AsyncFailure) {
      return Center(child: Text((_state as AsyncFailure).message));
    }
    if (_state is AsyncSuccess) {
      return NotificationListener(
        onNotification: (ScrollNotification notification) {
          if (notification.metrics.pixels >=
              notification.metrics.maxScrollExtent - 30) {
            if (_loadingMore is! AsyncLoading) {
              log("\x1B[33m Loading more \x1B[0m");
              _loadMore();
            }
          }
          return true;
        },
        child: Column(
          children: [
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async {
                  setState(() {
                    _state = AsyncLoading();
                  });
                  final data = await _loadData();
                  setState(() {
                    _state = data;
                  });
                },
                child: Scrollbar(
                  controller: _scrollController,
                  child: InteractiveViewer(
                    child: ListView.builder(
                      controller: _scrollController,
                      itemCount: _cats.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: _cats[index].width,
                          // height: _cats[index].height,
                          child: Image.network(
                            _cats[index].url,
                            key: ValueKey(_cats[index].id),
                            cacheWidth: 400,
                            fit: BoxFit.fitWidth,
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress != null) {
                                return Center(
                                  child: CircularProgressIndicator(
                                    value:
                                        (loadingProgress.cumulativeBytesLoaded /
                                            (loadingProgress
                                                    .expectedTotalBytes ??
                                                0)),
                                  ),
                                );
                              }
                              return child;
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
            if (_loadingMore is AsyncLoading)
              const Center(child: CircularProgressIndicator()),
          ],
        ),
      );
    }
    return Container();
  }

  Future<void> _loadMore() async {
    setState(() {
      _loadingMore = AsyncLoading();
    });
    final cats = await _query();
    setState(() {
      _cats.addAll(cats);
      _loadingMore = AsyncIdle();
    });
  }

  Future<AsyncState> _loadData() async {
    _state = AsyncLoading();
    try {
      final cats = await _query();
      return AsyncSuccess(cats);
    } catch (error, stackTrace) {
      log("\x1B[31m$error\x1B[0m", stackTrace: stackTrace);
      return AsyncFailure(error.toString());
    }
  }

  Future<List<Cat>> _query() async {
    print("running query");
    final response = await http
        .get(
          // Uri.parse("https://api.thecatapi.com/v1/images/search?limit=10"),
          // Uri.parse("http://localhost:3001/api/cat-images"),
          Uri.parse("http://10.0.2.2:3001/api/cat-images"),
        )
        .timeout(const Duration(seconds: 5));

    // log("\x1B[31m${response.body}\x1B[0m");
    if (response.statusCode != 200) {
      log("\x1B[31m${response.statusCode}\x1B[0m");
      throw Exception("Failed to load data");
    }
    final data = jsonDecode(response.body) as Map<String, dynamic>;
    log("\x1B[31m$data\x1B[0m");
    if (data.containsKey("data")) {
      final cats = (data["data"] as List).map((e) => Cat.fromJson(e)).toList();
      return cats;
    }
    final cats = (data as List).map((e) => Cat.fromJson(e)).toList();
    return cats;
  }
}

class Cat {
  final String id;
  final String url;
  final double width;
  final double height;

  Cat(this.id, this.url, this.width, this.height);

  factory Cat.fromJson(Map<String, dynamic> json) {
    return Cat(
      json['id'],
      json['url'],
      (json['width'] as num).toDouble(),
      (json['height'] as num).toDouble(),
    );
  }
}

abstract class AsyncState {}

class AsyncLoading extends AsyncState {}

class AsyncIdle extends AsyncState {}

class AsyncFailure extends AsyncState {
  final String message;

  AsyncFailure(this.message);
}

class AsyncSuccess<T> extends AsyncState {
  final T data;

  AsyncSuccess(this.data);
}
