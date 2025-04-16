import 'package:equatable/equatable.dart';

class RouteModel extends Equatable {
  final String route;
  final String bound;
  final String origEN;
  final String origTC;
  final String origSC;
  final String destEN;
  final String destTC;
  final String destSC;

  const RouteModel({
    required this.route,
    required this.bound,
    required this.origEN,
    required this.origTC,
    required this.origSC,
    required this.destEN,
    required this.destTC,
    required this.destSC,
  });

  @override
  List<Object?> get props => [
    route,
    bound,
    origEN,
    origTC,
    origSC,
    destEN,
    destTC,
    destSC,
  ];

  @override
  bool? get stringify => true;

  factory RouteModel.fromJson(Map<String, dynamic> json) => RouteModel(
    route: json['route'],
    bound: json['bound'],
    origEN: json['orig_en'],
    origTC: json['orig_tc'],
    origSC: json['orig_sc'],
    destEN: json['dest_en'],
    destTC: json['dest_tc'],
    destSC: json['dest_sc'],
  );
}
