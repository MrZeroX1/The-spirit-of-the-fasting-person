import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ytquran/dua/Azkar.dart';

class Ihsan extends StatefulWidget {
  const Ihsan({super.key});

  @override
  State<Ihsan> createState() => _IhsanState();
}

class _IhsanState extends State<Ihsan> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.accessibility_new),
          backgroundColor: Color.fromARGB(255, 95, 64, 55),
          title: Center(
            child: Text(
              "منصه احسان",
              style: TextStyle(
                  color: Color.fromARGB(255, 231, 224, 222),
                  fontSize: 54,
                  fontWeight: FontWeight.bold,
                  fontFamily: "IBM Plex Sans Arabic"),
            ),
          ),
        ),
        body: AnimatedBackground(
          behaviour: RandomParticleBehaviour(
            options: const ParticleOptions(
              spawnMaxRadius: 50,
              spawnMinSpeed: 10.00,
              particleCount: 68,
              spawnMaxSpeed: 50,
              minOpacity: 0.3,
              spawnOpacity: 0.4,
              baseColor: Color.fromARGB(255, 95, 43, 45),
              image: Image(image: AssetImage('assets/Images/Flutter.png')),
            ),
          ),
          vsync: this,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(children: [
                Text(
                    "اليوم أنت المتبرع وغدًا قد تكون من يحتاج إلى التبرع ، بادر بإنقاذ مريض",
                    style: TextStyle(
                      fontFamily: "IBM Plex Sans Arabic",
                      fontWeight: FontWeight.bold,
                    )),
                Image(image: AssetImage("assets/cc.png")),
                SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: _launchURL,
                  child: Text("!تبرع الأن ",
                      style: TextStyle(
                          fontFamily: "IBM Plex Sans Arabic", fontSize: 18)),
                  style: ButtonStyle(
                    foregroundColor: getColor(
                        Colors.white, Color.fromARGB(255, 163, 97, 99)),
                    backgroundColor: getColor(Color.fromARGB(255, 95, 43, 45),
                        Color.fromARGB(255, 169, 169, 169)),
                    side: getBorder(Colors.brown, Colors.black),
                  ),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://ehsan.sa/';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
