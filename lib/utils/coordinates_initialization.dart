import 'package:flutter/material.dart';
import 'package:nasa_challenge/domain/models/coordinates.dart';

class InitializedCoordinates {
  static List<Coordinates> init = [
    Coordinates(
        id: "Pachuca",
        locationName: "Pachuca de Soto",
        fillColor: const Color.fromARGB(98, 76, 175, 79),
        strokeColor: Colors.green,
        positions: [Position(lat: 1, lng: 0)]),
    Coordinates(
        id: "Bordo",
        locationName: "Bordo Poniente",
        fillColor: const Color.fromARGB(98, 76, 175, 79),
        strokeColor: Colors.green,
        positions: [Position(lat: 1, lng: 0)]),
    Coordinates(
        id: "Tula",
        locationName: "Tula",
        fillColor: const Color.fromARGB(98, 76, 175, 79),
        strokeColor: Colors.green,
        positions: [Position(lat: 1, lng: 0)])
  ];
}
