import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nasa_challenge/utils/coordinates_initialization.dart';

class MapViewPage extends StatefulWidget {
  const MapViewPage({super.key});

  @override
  State<MapViewPage> createState() => _MapViewPageState();
}

class _MapViewPageState extends State<MapViewPage> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  int pos = 1;

  String title = "Pachuca de Soto";

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  List<CameraPosition> positions = [
    // Pachuca
    const CameraPosition(
      target: LatLng(20.084683, -98.749287),
      zoom: 11,
    ),
    // Bordo Poniente
    const CameraPosition(
      target: LatLng(19.440076, -99.025026),
      zoom: 13.5,
    ),
    // Tula
    const CameraPosition(
      target: LatLng(20.415986, -99.229184),
      zoom: 11,
    )
  ];

  @override
  Widget build(BuildContext context) {
    Future<void> nextPosition() async {
      final GoogleMapController controller = await _controller.future;

      await controller
          .animateCamera(CameraUpdate.newCameraPosition(positions[pos]));

      setState(() {
        switch (pos) {
          case 0:
            title = "Pachuca de Soto";
            break;
          case 1:
            title = "Bordo Poniente";
            break;
          case 2:
            title = "Tula";
            break;
          default:
            title = "Pachuca de Soto";
            break;
        }

        if (pos == 2) {
          pos = 0;
        } else {
          pos++;
        }
      });
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Container(
          padding: const EdgeInsets.only(right: 2),
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: IconButton(
              color: Colors.white,
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              )),
        ),
        title: Container(
            height: 60,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 20, right: 30),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Text(title)),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        polygons: {
          for (int i = 0; i < InitializedCoordinates.init.length; i++)
            Polygon(
              polygonId: PolygonId(InitializedCoordinates.init[i].id),
              points: [
                for (int j = 0;
                    j < InitializedCoordinates.init[i].positions.length;
                    j++)
                  LatLng(InitializedCoordinates.init[i].positions[j].lat,
                      InitializedCoordinates.init[i].positions[j].lng)
              ],
              consumeTapEvents: true,
              strokeColor: InitializedCoordinates.init[i].strokeColor,
              strokeWidth: 1,
              geodesic: true,
              fillColor: InitializedCoordinates.init[i].fillColor,
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (_) => Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0))),
                        ));
              },
            ),
        },
        initialCameraPosition: positions[0],
        myLocationButtonEnabled: false,
        mapType: MapType.terrain,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: nextPosition,
        label: const Text('Siguiente'),
        icon: const Icon(Icons.directions_boat),
      ),
    );
  }
}
