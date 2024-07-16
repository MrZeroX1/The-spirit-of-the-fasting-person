import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ytquran/alward_youmi.dart';
import 'package:ytquran/dua/Azkar.dart';
import 'package:ytquran/Ihsan.dart';
import 'package:ytquran/quran/constant.dart';
import 'package:ytquran/prayer_times.dart';
import 'package:ytquran/prophet_Story.dart';
import 'quran/index.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:colorful_background/colorful_background.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() async {
  usePathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  ByteData cert = await PlatformAssetBundle().load('assets/isrg_x1.pem');
  try {
    SecurityContext.defaultContext
        .setTrustedCertificatesBytes(cert.buffer.asUint8List());
  } catch (e) {
    // ignore errors here, maybe it's already trusted
  }
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await readJson();
      await getSettings();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soul of fasting person',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: Intro(),
    );
  }
}

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MainScreen()),
      );
    });

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 95, 43, 45),
              Color.fromARGB(255, 95, 43, 45),
            ],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.topCenter,
                child: Image(image: AssetImage('assets/Intro_page.png')),
              ),
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 95, 43, 45),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 95, 43, 45),
      ),
      body: Center(
        child: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 7,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IndexPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Column(
                  children: const [
                    SizedBox(height: 1, width: 300),
                    Text(
                      "المصحف",
                      style: TextStyle(
                        fontSize: 35,
                        color: Color.fromARGB(255, 45, 61, 95),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AzkarPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Column(
                  children: const [
                    SizedBox(height: 1, width: 300),
                    Text(
                      "الاذكار",
                      style: TextStyle(
                        fontSize: 35,
                        color: Color.fromARGB(255, 45, 61, 95),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Ihsan()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Column(
                  children: const [
                    SizedBox(height: 1, width: 300),
                    Text(
                      "إحسان",
                      style: TextStyle(
                        fontSize: 35,
                        color: Color.fromARGB(255, 45, 61, 95),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Prophets_Story(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Column(
                  children: const [
                    SizedBox(height: 1, width: 300),
                    Text(
                      "قصص الأنبياء",
                      style: TextStyle(
                        fontSize: 35,
                        color: Color.fromARGB(255, 45, 61, 95),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => prayertimes()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Column(
                  children: const [
                    SizedBox(height: 1, width: 300),
                    Text(
                      "أوقات الاذان",
                      style: TextStyle(
                        fontSize: 35,
                        color: Color.fromARGB(255, 45, 61, 95),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => planning()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Column(
                  children: const [
                    SizedBox(height: 1, width: 300),
                    Text(
                      "   خطة ختم القران ",
                      style: TextStyle(
                        fontSize: 35,
                        color: Color.fromARGB(255, 45, 61, 95),
                      ),
                    ),
                  ],
                ),
              ),
              //SizedBox(height: 20),
              Image(
                  image: AssetImage('assets/mainn.png'),
                  height: 300,
                  width: 300),
            ],
          ),
        ]),
      ),
    );
  }
}
