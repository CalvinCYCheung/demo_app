import 'package:freezed_annotation/freezed_annotation.dart';

part 'mtr_line_data_entities.freezed.dart';
part 'mtr_line_data_entities.g.dart';

@freezed
abstract class MTRLineDataEntity with _$MTRLineDataEntity {
  const MTRLineDataEntity._();
  factory MTRLineDataEntity({
    required String line,
    required String description,
    required List<StationEntity> stations,
  }) = _MTRLineDataEntity;

  factory MTRLineDataEntity.fromJson(Map<String, dynamic> json) =>
      _$MTRLineDataEntityFromJson(json);
}

@freezed
abstract class StationEntity with _$StationEntity {
  const StationEntity._();
  factory StationEntity({
    required String sta,
    required String nameEN,
    required String nameTC,
    required String nameSC,
    required double latitude,
    required double longitude,
    required bool skipUp,
    required bool skipDown,
    required bool isInterchange,
  }) = _StationEntity;
  factory StationEntity.fromJson(Map<String, dynamic> json) =>
      _$StationEntityFromJson(json);
}

List<StationEntity> _customFromJson(Map<String, dynamic> json) {
  print('json: $json');
  return (json as List<dynamic>).map((e) {
    print('e: $e');
    final value = e.entries.first.value as Map<String, dynamic>;
    return StationEntity(
        sta: e.entries.first.key,
        nameEN: value["nameEN"],
        nameTC: value["nameTC"],
        nameSC: value["nameSC"],
        latitude: value["latitude"],
        longitude: value["longitude"],
        skipUp: value["skipUp"],
        skipDown: value["skipDown"],
        isInterchange: value["isInterchange"]);
  }).toList();
}
