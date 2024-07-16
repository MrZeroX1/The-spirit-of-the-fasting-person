import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Prophets_Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                _launchURL3();
              },
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 95, 43, 45),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: Column(
                children: const [
                  SizedBox(height: 1, width: 400),
                  Text(
                    "قصة النبي يوسف عليه السلام",
                    style: TextStyle(
                      fontSize: 35,
                      color: Color.fromARGB(255, 243, 241, 241),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _launchURL1;
              },
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 95, 43, 45),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: Column(
                children: const [
                  SizedBox(height: 1, width: 400),
                  Text(
                    "قصة النبي أدم عليه السلام",
                    style: TextStyle(
                      fontSize: 35,
                      color: Color.fromARGB(255, 243, 241, 241),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _launchURL2();
              },
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 95, 43, 45),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: Column(
                children: const [
                  SizedBox(height: 1, width: 400),
                  Text(
                    "قصة النبي نوح عليه السلام",
                    style: TextStyle(
                      fontSize: 35,
                      color: Color.fromARGB(255, 243, 241, 241),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _launchURL4();
              },
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 95, 43, 45),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: Column(
                children: const [
                  SizedBox(height: 1, width: 400),
                  Text(
                    "قصة النبي هود عليه السلام",
                    style: TextStyle(
                      fontSize: 35,
                      color: Color.fromARGB(255, 243, 241, 241),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

_launchURL1() async {
  const url =
      'https://www.youtube.com/watch?v=cAf68W3446g&ab_channel=BedayaTVl%D9%82%D9%86%D8%A7%D8%A9%D8%A8%D8%AF%D8%A7%D9%8A%D8%A9%D8%A7%D9%84%D9%81%D8%B6%D8%A7%D8%A6%D9%8A%D8%A9';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL2() async {
  const url =
      'https://www.youtube.com/watch?v=vnGyMnKFKt4&list=PLEbF07nYAB8L-RCGt_be4FoMWgwVOEMhH&ab_channel=ATAAnimationStudio';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL3() async {
  const url = "https://www.youtube.com/watch?v=gJIO0mWdExI&ab_channel=ATAMedia";
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL4() async {
  const url =
      'https://www.youtube.com/watch?v=ssWnk3q1Yx0&ab_channel=%D9%82%D8%B1%D8%A2%D9%86%D9%8A%D8%AC%D9%86%D8%A7%D8%AA%D9%8A';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
