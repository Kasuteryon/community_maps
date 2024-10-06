import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';
import 'package:nasa_challenge/domain/models/coordinates.dart';

class InfoSheet extends StatelessWidget {
  final Coordinates coordinates;
  const InfoSheet({super.key, required this.coordinates});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Text(
                coordinates.locationName,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            for (int i = 0; i < coordinates.greenhouseDetails.length; i++)
              Container(
                margin: const EdgeInsets.only(top: 20, right: 30, left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: coordinates.greenhouseDetails[i].color),
                    ),
                    Text(
                      coordinates.greenhouseDetails[i].description,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Text(
                coordinates.summary,
                style: const TextStyle(
                    fontSize: 18, fontWeight: FontWeight.normal),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 0),
              child: const Text(
                "Reason for Mapping",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Text(
                coordinates.mainIssue,
                style: const TextStyle(
                    fontSize: 18, fontWeight: FontWeight.normal),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 0),
              child: const Text(
                "Gallery",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 160,
              margin: const EdgeInsets.only(top: 20, bottom: 80),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (int i = 0; i < coordinates.urls.length; i++)
                    FullScreenWidget(
                      disposeLevel: DisposeLevel.Low,
                      child: Container(
                        margin:
                            EdgeInsets.only(left: i == 0 ? 40 : 0, right: 20),
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(coordinates.urls[i]),
                                fit: BoxFit.fitWidth)),
                      ),
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
