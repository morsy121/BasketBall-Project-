import 'package:flutter/material.dart';

void main() {
  runApp(BasketBallApp());
}

class BasketBallApp extends StatefulWidget {
  @override
  State<BasketBallApp> createState() => _BasketBallAppState();
}

class _BasketBallAppState extends State<BasketBallApp> {
  //const BasketBallApp({Key? key}) : super(key: key);
  int teamApoint = 0;

  int teamBpoint = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            'Point Counter',
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '$teamApoint',
                          style: TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            //teamApoint++;
                            setState(() {
                              teamApoint++;
                            });
                          },
                          child: Text(
                            'Add 1 Point',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            setState(() {
                              teamApoint = teamApoint + 2;
                            });
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            setState(() {
                              teamApoint = teamApoint + 3;
                            });
                          },
                          child: Text(
                            'Add 3 Point',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                      ]),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    indent: 20,
                    endIndent: 20,
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '$teamBpoint',
                          style: TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            setState(() {
                              teamBpoint++;
                            });
                          },
                          child: Text(
                            'Add 1 Point',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            setState(() {
                              teamBpoint += 2;
                            });
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            setState(() {
                              teamBpoint += 3;
                            });
                          },
                          child: Text(
                            'Add 3 Point',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                      ]),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                minimumSize: Size(150, 50),
              ),
              onPressed: () {
                setState(() {
                  teamApoint = 0;
                  teamBpoint = 0;
                });
              },
              child: Text(
                'Reset',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
