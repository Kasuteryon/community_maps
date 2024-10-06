import 'package:flutter/material.dart';
import 'package:nasa_challenge/domain/models/coordinates.dart';

class InitializedCoordinates {
  static List<Coordinates> init = [
    Coordinates(
        id: "Pachuca",
        locationName: "Pachuca de Soto",
        fillColor: const Color.fromARGB(98, 76, 175, 79),
        strokeColor: Colors.green,
        greenhouseDetails: [
          GreenhouseDetail(
              description: "2000 ppm of Methane",
              color: const Color.fromRGBO(105, 184, 108, 1))
        ],
        summary:
            "Pachuca, the capital of the state of Hidalgo in central Mexico, is located about 90 kilometers northeast of Mexico City. It sits at an elevation of approximately 2,400 meters (7,874 feet) above sea level. The city is historically known for its mining industry, particularly silver extraction, which played a major role in its economic development.",
        mainIssue:
            "Pachuca is of interest for mapping as the capital of the state of Hidalgo, where important universities, schools, and hospitals are located. Due to the effects of the mining industry, greenhouse gases are emitted.",
        urls: [
          "https://editorialrestauro.com.mx/wp-content/uploads/2020/01/Tabla-01-op-05-1024x684.png",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3WW0M6czsnst6oTWh1OOWA7YH8jOvCs5ekA&s",
          "https://www.am.com.mx/u/fotografias/m/2023/4/19/f1280x720-481064_612739_5050.jpg"
        ],
        initialPosition: Position(lat: 20.084683, lng: -98.749287),
        positions: [
          Position(lat: 19.973451, lng: -98.748256),
          Position(lat: 19.981444, lng: -98.746493),
          Position(lat: 19.984058, lng: -98.750512),
          Position(lat: 20.002189, lng: -98.741935),
          Position(lat: 20.009224, lng: -98.751832),
          Position(lat: 20.021230, lng: -98.741935),
          Position(lat: 20.018329, lng: -98.732187),
          Position(lat: 20.031682, lng: -98.723610),
          Position(lat: 20.043442, lng: -98.720747),
          Position(lat: 20.040892, lng: -98.712151),
          Position(lat: 20.049869, lng: -98.704478),
          Position(lat: 20.064472, lng: -98.693234),
          Position(lat: 20.059614, lng: -98.689376),
          Position(lat: 20.073799, lng: -98.683286),
          Position(lat: 20.081218, lng: -98.681936),
          Position(lat: 20.081218, lng: -98.686074),
          Position(lat: 20.086211, lng: -98.686442),
          Position(lat: 20.090588, lng: -98.677874),
          Position(lat: 20.089945, lng: -98.670439),
          Position(lat: 20.105963, lng: -98.662174),
          Position(lat: 20.100318, lng: -98.663103),
          Position(lat: 20.110707, lng: -98.671236),
          Position(lat: 20.134260, lng: -98.671937),
          Position(lat: 20.138758, lng: -98.680625),
          Position(lat: 20.142184, lng: -98.683234),
          Position(lat: 20.140520, lng: -98.693148),
          Position(lat: 20.143961, lng: -98.700688),
          Position(lat: 20.140348, lng: -98.701040),
          Position(lat: 20.139728, lng: -98.707450),
          Position(lat: 20.122122, lng: -98.718369),
          Position(lat: 20.101739, lng: -98.718716),
          Position(lat: 20.105647, lng: -98.746244),
          Position(lat: 20.099347, lng: -98.762314),
          Position(lat: 20.092585, lng: -98.763650),
          Position(lat: 20.080355, lng: -98.778701),
          Position(lat: 20.088048, lng: -98.787031),
          Position(lat: 20.091404, lng: -98.784078),
          Position(lat: 20.098407, lng: -98.785124),
          Position(lat: 20.094632, lng: -98.809924),
          Position(lat: 20.090588, lng: -98.810307),
          Position(lat: 20.084420, lng: -98.804741),
          Position(lat: 20.077252, lng: -98.805503),
          Position(lat: 20.073407, lng: -98.802640),
          Position(lat: 20.074036, lng: -98.807303),
          Position(lat: 20.082492, lng: -98.820073),
          Position(lat: 20.069097, lng: -98.835563),
          Position(lat: 20.058445, lng: -98.826366),
          Position(lat: 20.053906, lng: -98.829356),
          Position(lat: 20.042648, lng: -98.834874),
          Position(lat: 20.034412, lng: -98.841732),
          Position(lat: 20.028643, lng: -98.839049),
          Position(lat: 20.024270, lng: -98.831614),
          Position(lat: 20.014203, lng: -98.830235),
          Position(lat: 20.004108, lng: -98.819480),
          Position(lat: 20.002214, lng: -98.825093),
          Position(lat: 20.004579, lng: -98.834539),
          Position(lat: 19.997619, lng: -98.833208),
          Position(lat: 19.987647, lng: -98.829504),
          Position(lat: 19.993686, lng: -98.822404),
          Position(lat: 19.995057, lng: -98.813808),
          Position(lat: 19.991262, lng: -98.813808),
          Position(lat: 19.989015, lng: -98.808902),
          Position(lat: 19.983414, lng: -98.807516),
          Position(lat: 19.991262, lng: -98.798663),
          Position(lat: 19.980802, lng: -98.776354),
          Position(lat: 19.987903, lng: -98.771106)
        ]),
    // Coordinates(
    //     id: "TDRDC",
    //     locationName: "Tepeji del Río del Campo",
    //     fillColor: const Color.fromARGB(98, 76, 175, 79),
    //     strokeColor: Colors.green,
    //     initialPosition: Position(lat: 20.415986, lng: -99.229184),
    //     greenhouseDetails: [
    //       GreenhouseDetail(
    //           description: "2000 ppm of Methane",
    //           color: const Color.fromRGBO(105, 184, 108, 1))
    //     ],
    //     summary:
    //         "...",
    //     mainIssue:
    //         "...",
    //     urls: [
    //       "https://editorialrestauro.com.mx/wp-content/uploads/2020/01/Tabla-01-op-05-1024x684.png",
    //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3WW0M6czsnst6oTWh1OOWA7YH8jOvCs5ekA&s",
    // //       "https://www.am.com.mx/u/fotografias/m/2023/4/19/f1280x720-481064_612739_5050.jpg"
    // //     ],
    // //     positions: []),
    // Coordinates(
    //     id: "Atitalaquia",
    //     locationName: "Atitalaquia",
    //     fillColor: const Color.fromARGB(98, 76, 175, 79),
    //     strokeColor: Colors.green,
    //     initialPosition: Position(lat: 20.415986, lng: -99.229184),
    //     greenhouseDetails: [
    //       GreenhouseDetail(
    //           description: "2000 ppm of Methane",
    //           color: const Color.fromRGBO(105, 184, 108, 1))
    //     ],
    //     summary:
    //         "Pachuca, the capital of the state of Hidalgo in central Mexico, is located about 90 kilometers northeast of Mexico City. It sits at an elevation of approximately 2,400 meters (7,874 feet) above sea level. The city is historically known for its mining industry, particularly silver extraction, which played a major role in its economic development.",
    //     mainIssue:
    //         "Pachuca is of interest for mapping as the capital of the state of Hidalgo, where important universities, schools, and hospitals are located. Due to the effects of the mining industry, greenhouse gases are emitted.",
    //     urls: [
    //       "https://editorialrestauro.com.mx/wp-content/uploads/2020/01/Tabla-01-op-05-1024x684.png",
    //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3WW0M6czsnst6oTWh1OOWA7YH8jOvCs5ekA&s",
    //       "https://www.am.com.mx/u/fotografias/m/2023/4/19/f1280x720-481064_612739_5050.jpg"
    //     ],
    //     positions: []),
    // Coordinates(
    //     id: "ADT",
    //     locationName: "Atotonilco de Tula",
    //     fillColor: const Color.fromARGB(98, 76, 175, 79),
    //     strokeColor: Colors.green,
    //     initialPosition: Position(lat: 20.415986, lng: -99.229184),
    //     greenhouseDetails: [
    //       GreenhouseDetail(
    //           description: "2000 ppm of Methane",
    //           color: const Color.fromRGBO(105, 184, 108, 1))
    //     ],
    //     summary: "...",
    //     mainIssue: "...",
    //     urls: [
    //       "https://editorialrestauro.com.mx/wp-content/uploads/2020/01/Tabla-01-op-05-1024x684.png",
    //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3WW0M6czsnst6oTWh1OOWA7YH8jOvCs5ekA&s",
    //       "https://www.am.com.mx/u/fotografias/m/2023/4/19/f1280x720-481064_612739_5050.jpg"
    //     ],
    //     positions: []),
    // Coordinates(
    //     id: "Tepetitlán",
    //     locationName: "Tepetitlán",
    //     fillColor: const Color.fromARGB(98, 76, 175, 79),
    //     strokeColor: Colors.green,
    //     initialPosition: Position(lat: 20.415986, lng: -99.229184),
    //     greenhouseDetails: [
    //       GreenhouseDetail(
    //           description: "2000 ppm of Methane",
    //           color: const Color.fromRGBO(105, 184, 108, 1))
    //     ],
    //     summary: "...",
    //     mainIssue: "...",
    //     urls: [
    //       "https://editorialrestauro.com.mx/wp-content/uploads/2020/01/Tabla-01-op-05-1024x684.png",
    //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3WW0M6czsnst6oTWh1OOWA7YH8jOvCs5ekA&s",
    //       "https://www.am.com.mx/u/fotografias/m/2023/4/19/f1280x720-481064_612739_5050.jpg"
    //     ],
    //     positions: []),
    // Coordinates(
    //     id: "TDA",
    //     locationName: "Tezontepec de Aldama",
    //     fillColor: const Color.fromARGB(98, 76, 175, 79),
    //     strokeColor: Colors.green,
    //     initialPosition: Position(lat: 20.415986, lng: -99.229184),
    //     greenhouseDetails: [
    //       GreenhouseDetail(
    //           description: "2000 ppm of Methane",
    //           color: const Color.fromRGBO(105, 184, 108, 1))
    //     ],
    //     summary: "...",
    //     mainIssue: "...",
    //     urls: [
    //       "https://editorialrestauro.com.mx/wp-content/uploads/2020/01/Tabla-01-op-05-1024x684.png",
    //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3WW0M6czsnst6oTWh1OOWA7YH8jOvCs5ekA&s",
    //       "https://www.am.com.mx/u/fotografias/m/2023/4/19/f1280x720-481064_612739_5050.jpg"
    //     ],
    //     positions: []),
    // Coordinates(
    //     id: "Tlahuelipan",
    //     locationName: "Tlahuelipan",
    //     fillColor: const Color.fromARGB(98, 76, 175, 79),
    //     strokeColor: Colors.green,
    //     initialPosition: Position(lat: 20.415986, lng: -99.229184),
    //     greenhouseDetails: [
    //       GreenhouseDetail(
    //           description: "2000 ppm of Methane",
    //           color: const Color.fromRGBO(105, 184, 108, 1))
    //     ],
    //     summary: "...",
    //     mainIssue: "...",
    //     urls: [
    //       "https://editorialrestauro.com.mx/wp-content/uploads/2020/01/Tabla-01-op-05-1024x684.png",
    //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3WW0M6czsnst6oTWh1OOWA7YH8jOvCs5ekA&s",
    //       "https://www.am.com.mx/u/fotografias/m/2023/4/19/f1280x720-481064_612739_5050.jpg"
    //     ],
    //     positions: []),
    // Coordinates(
    //     id: "Tlaxcopan",
    //     locationName: "Tlaxcopan",
    //     fillColor: const Color.fromARGB(98, 76, 175, 79),
    //     strokeColor: Colors.green,
    //     initialPosition: Position(lat: 20.415986, lng: -99.229184),
    //     greenhouseDetails: [
    //       GreenhouseDetail(
    //           description: "2000 ppm of Methane",
    //           color: const Color.fromRGBO(105, 184, 108, 1))
    //     ],
    //     summary: "...",
    //     mainIssue: "...",
    //     urls: [
    //       "https://editorialrestauro.com.mx/wp-content/uploads/2020/01/Tabla-01-op-05-1024x684.png",
    //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3WW0M6czsnst6oTWh1OOWA7YH8jOvCs5ekA&s",
    //       "https://www.am.com.mx/u/fotografias/m/2023/4/19/f1280x720-481064_612739_5050.jpg"
    //     ],
    //     positions: []),
    // Coordinates(
    //     id: "TDALL",
    //     locationName: "Tula de Allende",
    //     fillColor: const Color.fromARGB(98, 76, 175, 79),
    //     strokeColor: Colors.green,
    //     initialPosition: Position(lat: 20.415986, lng: -99.229184),
    //     greenhouseDetails: [
    //       GreenhouseDetail(
    //           description: "2000 ppm of Methane",
    //           color: const Color.fromRGBO(105, 184, 108, 1))
    //     ],
    //     summary: "...",
    //     mainIssue: "...",
    //     urls: [
    //       "https://editorialrestauro.com.mx/wp-content/uploads/2020/01/Tabla-01-op-05-1024x684.png",
    //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3WW0M6czsnst6oTWh1OOWA7YH8jOvCs5ekA&s",
    //       "https://www.am.com.mx/u/fotografias/m/2023/4/19/f1280x720-481064_612739_5050.jpg"
    //     ],
    //     positions: []),
    // Coordinates(
    //     id: "Bordo",
    //     locationName: "Bordo Poniente",
    //     fillColor: const Color.fromARGB(98, 76, 175, 79),
    //     strokeColor: Colors.green,
    //     initialPosition: Position(lat: 20.415986, lng: -99.229184),
    //     greenhouseDetails: [
    //       GreenhouseDetail(
    //           description: "2000 ppm of Methane",
    //           color: const Color.fromRGBO(105, 184, 108, 1))
    //     ],
    //     summary: "...",
    //     mainIssue: "...",
    //     urls: [
    //       "https://editorialrestauro.com.mx/wp-content/uploads/2020/01/Tabla-01-op-05-1024x684.png",
    //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3WW0M6czsnst6oTWh1OOWA7YH8jOvCs5ekA&s",
    //       "https://www.am.com.mx/u/fotografias/m/2023/4/19/f1280x720-481064_612739_5050.jpg"
    //     ],
    //     positions: [])
  ];
}
