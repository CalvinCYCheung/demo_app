class MTRLineModel {
  final String line;
  final String description;
  final List<StationModel> stations;

  MTRLineModel(this.line, this.description, this.stations);

  factory MTRLineModel.fromJson(Map<String, dynamic> json) {
    return MTRLineModel(
      json["line"],
      json["description"],
      (json["stations"] as List<dynamic>).map((e) {
        final value = e.entries.first.value as Map<String, dynamic>;
        return StationModel(
          sta: e.entries.first.key,
          nameEN: value["nameEN"],
          nameTC: value["nameTC"],
          nameSC: value["nameSC"],
          latitude: value["latitude"],
          longitude: value["longitude"],
          skipDown: value["skipDown"],
          skipUp: value["skipUp"],
          isInterchange: value["isInterchange"],
        );
      }).toList(),
    );
  }
}

class StationModel {
  final String sta;
  final String nameEN;
  final String nameTC;
  final String nameSC;
  final double latitude;
  final double longitude;
  final bool skipUp;
  final bool skipDown;
  final bool isInterchange;

  StationModel({
    required this.sta,
    required this.nameEN,
    required this.nameTC,
    required this.nameSC,
    required this.latitude,
    required this.longitude,
    required this.skipDown,
    required this.skipUp,
    required this.isInterchange,
  });

  @override
  String toString() {
    return "StationModel(sta:$sta, nameEN:$nameEN, nameTC:$nameTC, nameSC:$nameSC,latitude:$latitude,longitude:$longitude)";
  }

  Map<String, dynamic> toJson() {
    return {
      'sta': sta,
      'nameEN': nameEN,
      'nameTC': nameTC,
      'nameSC': nameSC,
      'latitude': latitude,
      'longitude': longitude,
      'skipUp': skipUp,
      'skipDown': skipDown,
      'isInterchange': isInterchange,
    };
  }
}
