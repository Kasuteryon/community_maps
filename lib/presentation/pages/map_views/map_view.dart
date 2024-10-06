import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nasa_challenge/domain/models/arobjects.dart';
import 'package:nasa_challenge/presentation/pages/ar_views/ar_screen_view.dart';
import 'package:nasa_challenge/presentation/pages/map_views/custom_marker.dart';
import 'package:nasa_challenge/presentation/pages/map_views/info_sheet.dart';
import 'package:nasa_challenge/utils/coordinates_initialization.dart';

class MapViewPage extends StatefulWidget {
  const MapViewPage({super.key});

  @override
  State<MapViewPage> createState() => _MapViewPageState();
}

class _MapViewPageState extends State<MapViewPage> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  BitmapDescriptor icon = BitmapDescriptor.defaultMarker;

  Future<BitmapDescriptor> getCustomIcon() async {
    return SizedBox(
      height: 50,
      width: 130,
      child: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text(
          'See More',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        heroTag: (Random().nextDouble() * 256).toString(),
        backgroundColor: const Color(0xff002960),
        icon: const Icon(Icons.zoom_out_map, color: Colors.white),
      ),
    ).toBitmapDescriptor();
  }

  toNonAsync() async {
    icon = await getCustomIcon();

    setState(() {
      icon = icon;
    });
  }

  int pos = 1;

  @override
  void initState() {
    toNonAsync();
    super.initState();
  }

  String title = "Pachuca de Soto";

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  List<CameraPosition> positions = [
    // Pachuca
    const CameraPosition(
      target: LatLng(20.084683, -98.749287),
      zoom: 11.5,
    ),
    // Bordo Poniente
    const CameraPosition(
      target: LatLng(19.440076, -99.025026),
      zoom: 13.5,
    ),
    // Tula
    const CameraPosition(
      target: LatLng(20.415986, -99.229184),
      zoom: 9,
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
          decoration: const BoxDecoration(
              color: Color(0xff002960), shape: BoxShape.circle),
          child: IconButton(
              color: Colors.white,
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              )),
        ),
        title: Container(
            height: 60,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 20, right: 30),
            decoration: BoxDecoration(
                color: const Color(0xff002960),
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              title,
              style: const TextStyle(color: Colors.white),
            )),
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
                    builder: (_) =>
                        InfoSheet(coordinates: InitializedCoordinates.init[i]));
              },
            ),
        },
        markers: {
          for (int i = 0; i < InitializedCoordinates.init.length; i++)
            Marker(
                icon: icon,
                markerId: MarkerId(InitializedCoordinates.init[i].id),
                consumeTapEvents: true,
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (_) => InfoSheet(
                          coordinates: InitializedCoordinates.init[i]));
                },
                position: LatLng(
                    InitializedCoordinates.init[i].positions[0].lat,
                    InitializedCoordinates.init[i].positions[0].lng))
        },
        initialCameraPosition: positions[0],
        myLocationButtonEnabled: false,
        mapType: MapType.terrain,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ARObjectsScreen(
                            object: ARObjects.chicken,
                            isLocal: true,
                          )));
            },
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 40),
              height: 120,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      image: AssetImage("assets/logo/ar_map.jpg"),
                      fit: BoxFit.cover),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(69, 0, 0, 0),
                        offset: Offset(0.1, 0.1),
                        blurRadius: 10,
                        spreadRadius: 0.5)
                  ]),
              child: const Text("View in AR",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          FloatingActionButton.extended(
            heroTag: "next",
            onPressed: nextPosition,
            label: const Text('Next Location'),
            icon: const Icon(Icons.directions_boat),
          ),
        ],
      ),
    );
  }
}
