import 'package:flutter/material.dart';

class PointsCounter extends StatefulWidget {
  PointsCounter({Key? key}) : super(key: key);

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Points Counter"),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Team A",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "$teamAPoints",
                      style: TextStyle(fontSize: 100),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamAPoints++;
                        });
                      },
                      child: Text(
                        "Add 1 Point",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamAPoints += 2;
                        });
                      },
                      child: Text(
                        "Add 2 Point",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamAPoints += 3;
                        });
                      },
                      child: Text(
                        "Add 3 Point",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 300,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Team B",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "$teamBPoints",
                      style: TextStyle(fontSize: 100),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBPoints++;
                        });
                      },
                      child: Text(
                        "Add 1 Point",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBPoints += 2;
                        });
                      },
                      child: Text(
                        "Add 2 Point",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBPoints += 3;
                        });
                      },
                      child: Text(
                        "Add 3 Point",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamAPoints = 0;

                  teamBPoints = 0;
                });
              },
              child: Text(
                "Reset",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                minimumSize: Size(200, 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
