import 'dart:convert';
import 'dart:ui';

class Coordinates {
  final String id;
  final String locationName;
  final Color strokeColor;
  final Color fillColor;
  final Position initialPosition;
  final List<Position> positions;

  Coordinates({
    required this.strokeColor,
    required this.fillColor,
    required this.id,
    required this.locationName,
    required this.initialPosition,
    required this.positions,
  });
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
