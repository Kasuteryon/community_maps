import 'package:flutter/material.dart';
import 'package:nasa_challenge/domain/models/arcards.dart';
import 'package:nasa_challenge/domain/models/arobjects.dart';
import 'package:nasa_challenge/presentation/pages/ar_views/ar_screen_view.dart';
import 'package:nasa_challenge/utils/app_colors.dart';

class ARHome extends StatefulWidget {
  const ARHome({super.key});

  @override
  State<ARHome> createState() => _ARHomeState();
}

class _ARHomeState extends State<ARHome> {
  List<ARCardModel> mycard = [
    ARCardModel(
        Icons.map, 'Pachuca de Soto', false, ARObjects.grandcanyon, true),
    ARCardModel(Icons.map_outlined, 'San  Agustín Tlaxiaca', false,
        ARObjects.grandcanyon, true),
    ARCardModel(
        Icons.map_rounded, 'Tulancingo', false, ARObjects.chicken, true),
    ARCardModel(
        Icons.location_history, 'Actopan', false, ARObjects.chicken, true),
  ];

  void onTap(ARCardModel e) {
    setState(() {
      e.isActive = !e.isActive;
    });
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ARObjectsScreen(
                  object: e.object,
                  isLocal: e.isLocal,
                ))).then((value) {
      setState(() {
        e.isActive = !e.isActive;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        elevation: 0.0,
        scrolledUnderElevation: 0.0,
        backgroundColor: const Color(0xff002960),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "AR Model Gallery",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          Image.asset("assets/logo/inner_banner.png"),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 80, right: 10, left: 10),
              child: ListView(
                children: mycard
                    .map(
                      (e) => InkWell(
                        onTap: () => onTap(e),
                        child: Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            height: 200,
                            width: 600,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Color.fromARGB(32, 0, 0, 0),
                                        BlendMode.darken),
                                    image: AssetImage("assets/logo/2d_map.png"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              e.title,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 40),
                            )),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
