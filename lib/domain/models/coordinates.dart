import 'dart:convert';
import 'dart:ui';

class Coordinates {
  final String id;
  final String locationName;
  final Color strokeColor;
  final Color fillColor;
  final String summary;
  final String mainIssue;
  final Position initialPosition;
  final List<String> urls;
  final List<GreenhouseDetail> greenhouseDetails;
  final List<Position> positions;

  Coordinates(
      {required this.strokeColor,
      required this.fillColor,
      required this.id,
      required this.locationName,
      required this.initialPosition,
      required this.positions,
      required this.summary,
      required this.mainIssue,
      required this.urls,
      required this.greenhouseDetails});
}

class GreenhouseDetail {
  final String description;
  final Color color;

  GreenhouseDetail({required this.description, required this.color});
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
