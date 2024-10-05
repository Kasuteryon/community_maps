import 'package:flutter/material.dart';
import 'package:nasa_challenge/presentation/pages/ar_views/ar_home.dart';
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
        child: Column(
          children: [
            Image.asset("assets/logo/banner.png"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 40),
                    height: 200,
                    width: 400,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            colorFilter: ColorFilter.mode(
                                Color.fromARGB(32, 0, 0, 0), BlendMode.darken),
                            image: AssetImage("assets/logo/2d_map.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const MapViewPage()));
                        },
                        child: const Text(
                          "2D Map View",
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ))),
                Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                    height: 200,
                    width: 400,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/logo/ar_map.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const ARHome()));
                        },
                        child: const Text(
                          "AR Map View",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
