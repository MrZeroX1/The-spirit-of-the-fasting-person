import 'dart:collection';
import 'dart:math';
import 'package:simple_animations/simple_animations.dart';
import 'package:flutter/material.dart';
import 'package:ytquran/dua/eat1.dart';
import 'package:ytquran/dua/home.dart';
import 'package:ytquran/dua/sleep.dart';
import 'package:ytquran/dua/sabah.dart';
import 'package:ytquran/dua/wake_up.dart';

import 'night.dart';

class AzkarPage extends StatelessWidget {
  const AzkarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          //   primarySwatch: Colors.brown,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  elevation: 16,
                  shape: CircleBorder(),
                  minimumSize: Size.square(100)))),
      home: Scaffold(
        appBar: AppBar(
          leading: ImageIcon(AssetImage("assets/prayer_times.png")),
          backgroundColor: Color.fromARGB(255, 95, 43, 45),
          //  foregroundColor: getColor(Colors.white, Color.fromARGB(255, 95, 43, 45)),
          title: Center(
            child: Text(
              "الاذكار",
              style: TextStyle(
                  color: Color.fromARGB(255, 231, 224, 222),
                  fontSize: 54,
                  fontWeight: FontWeight.bold,
                  fontFamily: "IBM Plex Sans Arabic"),
            ),
          ),
        ),
        body: ListView(padding: const EdgeInsets.all(16), children: <Widget>[
          Center(
            child: Column(
              children: [
                Row(children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Morningdua()),
                      );
                    },
                    child: Text(
                      //<-- SEE HERE
                      "اذكار الصباح",
                      style: TextStyle(
                          color: Color.fromARGB(255, 240, 236, 234),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "IBM Plex Sans Arabic"),
                    ),
                    style: ButtonStyle(
                      foregroundColor: getColor(
                          Colors.white, Color.fromARGB(255, 163, 97, 99)),
                      backgroundColor: getColor(Color.fromARGB(255, 95, 43, 45),
                          Color.fromARGB(255, 169, 169, 169)),
                      side: getBorder(Colors.brown, Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                    height: 4,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => wdua()),
                      );
                    },
                    child: Text(
                      "اذكار الاستيقاظ ",
                      style: TextStyle(
                          color: Color.fromARGB(255, 240, 236, 234),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "IBM Plex Sans Arabic"),
                    ),
                    style: ButtonStyle(
                      foregroundColor: getColor(
                          Colors.white, Color.fromARGB(255, 163, 97, 99)),
                      backgroundColor: getColor(Color.fromARGB(255, 95, 43, 45),
                          Color.fromARGB(255, 169, 169, 169)),
                      side: getBorder(Colors.brown, Colors.black),
                    ),
                  ),
                ]),
              ],
            ),
          ),
          SizedBox(height: 12),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Edua()),
                  );
                },
                child: Text(
                  "اذكار المساء",
                  style: TextStyle(
                      color: Color.fromARGB(255, 240, 236, 234),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: "IBM Plex Sans Arabic"),
                ),
                style: ButtonStyle(
                  foregroundColor:
                      getColor(Colors.white, Color.fromARGB(255, 163, 97, 99)),
                  backgroundColor: getColor(Color.fromARGB(255, 95, 43, 45),
                      Color.fromARGB(255, 169, 169, 169)),
                  side: getBorder(Colors.brown, Colors.black),
                ),
              ),
              SizedBox(
                width: 25,
                height: 4,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SDua()),
                  );
                },
                child: Text(
                  "اذكار النوم",
                  style: TextStyle(
                      color: Color.fromARGB(255, 240, 236, 234),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: "IBM Plex Sans Arabic"),
                ),
                style: ButtonStyle(
                  foregroundColor:
                      getColor(Colors.white, Color.fromARGB(255, 163, 97, 99)),
                  backgroundColor: getColor(Color.fromARGB(255, 95, 43, 45),
                      Color.fromARGB(255, 169, 169, 169)),
                  side: getBorder(Colors.brown, Colors.black),
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => hdua()),
                );
              },
              child: Text(
                "اذكار المنزل",
                style: TextStyle(
                    color: Color.fromARGB(255, 240, 236, 234),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: "IBM Plex Sans Arabic"),
              ),
              style: ButtonStyle(
                foregroundColor:
                    getColor(Colors.white, Color.fromARGB(255, 163, 97, 99)),
                backgroundColor: getColor(Color.fromARGB(255, 95, 43, 45),
                    Color.fromARGB(255, 169, 169, 169)),
                side: getBorder(Colors.brown, Colors.black),
              ),
            ),
            SizedBox(
              width: 16,
              height: 4,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => fdua()),
                );
              },
              child: Text(
                "اذكار الطعام",
                style: TextStyle(
                    color: Color.fromARGB(255, 240, 236, 234),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: "IBM Plex Sans Arabic"),
              ),
              style: ButtonStyle(
                foregroundColor:
                    getColor(Colors.white, Color.fromARGB(255, 163, 97, 99)),
                backgroundColor: getColor(Color.fromARGB(255, 95, 43, 45),
                    Color.fromARGB(255, 169, 169, 169)),
                side: getBorder(Colors.brown, Colors.black),
              ),
            ),
          ])
        ]),
      ),
    );
  }
}

MaterialStateProperty<Color> getColor(Color color, Color colorPressed) {
  final getColor = (Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return colorPressed;
    } else {
      return color;
    }
  };

  return MaterialStateProperty.resolveWith(getColor);
}

MaterialStateProperty<BorderSide> getBorder(Color color, Color colorPressed) {
  final getBorder = (Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return BorderSide(color: colorPressed, width: 2);
    } else {
      return BorderSide(color: color, width: 2);
    }
  };

  return MaterialStateProperty.resolveWith(getBorder);
}
