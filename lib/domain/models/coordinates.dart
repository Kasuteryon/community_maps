import 'dart:convert';
import 'dart:ui';

class Coordinates {
  final String id;
  final String locationName;
  final Color strokeColor;
  final Color fillColor;
  final List<Position> positions;

  Coordinates({
    required this.strokeColor,
    required this.fillColor,
    required this.id,
    required this.locationName,
    required this.positions,
  });

  factory Coordinates.fromRawJson(String str) =>
      Coordinates.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Coordinates.fromJson(Map<String, dynamic> json) => Coordinates(
        fillColor: json["fillColor"],
        strokeColor: json["strokeColor"],
        id: json["id"],
        locationName: json["location_name"],
        positions: json["positions"] == null
            ? []
            : List<Position>.from(
                json["positions"]!.map((x) => Position.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "fillColor": fillColor,
        "strokeColor": strokeColor,
        "id": id,
        "location_name": locationName,
        "positions": positions == null
            ? []
            : List<dynamic>.from(positions!.map((x) => x.toJson())),
      };
}

class Position {
  final double lat;
  final double lng;

  Position({
    required this.lat,
    required this.lng,
  });

  factory Position.fromRawJson(String str) =>
      Position.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Position.fromJson(Map<String, dynamic> json) => Position(
        lat: json["lat"]?.toDouble(),
        lng: json["lng"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "lat": lat,
        "lng": lng,
      };
}
