import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nasa_challenge/presentation/pages/ar_views/ar_home.dart';
import 'package:nasa_challenge/presentation/pages/home/about.dart';
import 'package:nasa_challenge/presentation/pages/map_views/map_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        elevation: 0.0,
        backgroundColor: const Color(0xff002960),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            Image.asset("assets/logo/banner.png"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: const Alignment(0.7, 0.80),
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const MapViewPage()));
                      },
                      child: Container(
                          margin: const EdgeInsets.only(
                              right: 30, left: 30, top: 40, bottom: 10),
                          alignment: Alignment.center,
                          height: 300,
                          width: 400,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Color.fromARGB(32, 0, 0, 0),
                                      BlendMode.darken),
                                  image: AssetImage("assets/logo/2d_map.png"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Text(
                            "Enter Map Viewer",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          )),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const MapViewPage()));
                      },
                      backgroundColor: const Color.fromARGB(255, 255, 131, 122),
                      child: const Icon(
                        Icons.play_arrow_rounded,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 30),
                    height: 60,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffDAE1FD),
                    ),
                    child: TextButton(
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (_) => const AboutPage());
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "About this Project",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            Icon(
                              Icons.info,
                            )
                          ],
                        ))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
