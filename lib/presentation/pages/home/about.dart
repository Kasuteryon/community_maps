import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

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
              child: const Text(
                "About this Project",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: const Text(
                "Hi there! We're a Mexican Team interested in developing educational tools powered by Augmented Reality and GIS in order to enhance the studying process and learn more effectively about relevant topics.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: const Text(
                "We selected 'Community Mapping' challenge, cause we believe in the great importance of informing to the people of Hidalgo, our home town state, about the existence of Greenhouse Gases, their impact, and what it entails. Cause it is present everywhere in the state.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: const Text(
                "So having this opportunity, we selected the places where the presence is big (including Tula and its Municipalties, the second most polluted city in the world between 2002 and 2005 declared by UNESCO) and developed a tool that can serve that purpose: inform and educate. An impactful source of information with entertaining technologies such as Augmented Reality and Maps (based on GIS) in a mobile app designed for everyone.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: const Text(
                "We have plans to deploy this app into the App Stores, so it's available freely for everyone. 'The more people know about it, the faster the changes will come'. Hidalgo will be healthier again!",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
                margin: const EdgeInsets.only(bottom: 50),
                height: 160,
                child: Image.asset("assets/logo/footer.png"))
          ],
        ),
      ),
    );
  }
}
