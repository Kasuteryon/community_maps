import 'package:flutter/material.dart';
import 'package:nasa_challenge/domain/models/coordinates.dart';

class InitializedCoordinates {
  static List<Coordinates> init = [
    Coordinates(
        id: "Pachuca",
        locationName: "Pachuca de Soto",
        fillColor: const Color.fromARGB(98, 76, 175, 79),
        strokeColor: Colors.green,
        positions: [
          Position(lat: 20.137157, lng: -98.749109),
          Position(lat: 20.126608, lng: -98.748573),
          Position(lat: 20.125947, lng: -98.748597),
          Position(lat: 20.124331, lng: -98.748489),
          Position(lat: 20.123642, lng: -98.748631),
          Position(lat: 20.117879, lng: -98.748882),
          Position(lat: 20.113934, lng: -98.748031),
          Position(lat: 20.113383, lng: -98.742817)
        ]),
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
