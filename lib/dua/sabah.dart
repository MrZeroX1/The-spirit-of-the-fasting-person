import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Morningdua extends StatefulWidget {
  @override
  _MorningduaState createState() => _MorningduaState();
}

class _MorningduaState extends State<Morningdua> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 95, 45, 45),
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                ),
                SizedBox(width: 16.0),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'بسم الله الرحمن الرحيم\nقُلۡ هُوَ ٱللَّهُ أَحَدٌ (1) ٱللَّهُ ٱلصَّمَدُ (2) لَمۡ يَلِدۡ وَلَمۡ يُولَدۡ (3) وَلَمۡ يَكُن لَّهُۥ كُفُوًا أَحَدُۢ (4)',
                    style: TextStyle(fontSize: 35, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 40),
                  Text(
                    'من قالها حين يصبح وحين يمسي كفته من كل شيء (الإخلاص والمعوذتين)',
                    style: TextStyle(fontSize: 30, color: Colors.blue),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: _decrementCounter,
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(0, 255, 255, 255),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Icon(Icons.remove,
                            color: Color.fromARGB(255, 95, 45, 45)),
                      ),
                      SizedBox(width: 16.0),
                      Text(
                        '$_counter',
                        style: TextStyle(
                            fontSize: 24.0,
                            color: Color.fromARGB(255, 112, 112, 112)),
                      ),
                      SizedBox(width: 16.0),
                      ElevatedButton(
                        onPressed: _incrementCounter,
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(0, 255, 255,
                              255), // Set background color to white
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Icon(Icons.add,
                            color: Color.fromARGB(255, 95, 45, 45)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
