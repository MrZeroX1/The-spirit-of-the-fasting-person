import 'package:flutter/material.dart';

class fdua extends StatefulWidget {
  @override
  _fduaState createState() => _fduaState();
}

class _fduaState extends State<fdua> {
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
                    'ِأذكر عند الطعام والشراب',
                    style: TextStyle(fontSize: 35, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 40),
                  Text(
                    'سْمِ اللهِ.\nفإنْ نسي في أَوَّلِهِ، فَليَقُلْ: \nبِسْمِ اللَّه أَوَّلَهُ وَآخِرَهُ.',
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
                          primary: Color.fromARGB(0, 255, 255, 255),
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