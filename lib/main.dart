import 'package:flutter/material.dart';

void main() {
  runApp(Counter());
}

class Counter extends StatefulWidget {
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int teamA = 0;

  int teamB = 0;

  void addpoints() {
    teamA = 10;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("points counter", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("Team A", style: TextStyle(fontSize: 45)),
                    Text('$teamA', style: TextStyle(fontSize: 160)),
                    ElevatedButton(
                      onPressed: () {
                        teamA += 1;
                        setState(() {});
                      },
                      child: Text("add 1 point"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.black,
                        fixedSize: Size(130, 20),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("add 2 points"),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(130, 20),
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.black,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("add 3 points"),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(130, 20),
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.black,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(thickness: 4, color: Colors.black),
                ),
                Column(
                  children: [
                    Text("Team B", style: TextStyle(fontSize: 45)),
                    Text("$teamB", style: TextStyle(fontSize: 160)),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("add 1 point"),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(130, 20),
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.black,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("add 2 points"),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(130, 20),
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.black,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("add 3 points"),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(130, 0),
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamA = 0;
                });
              },

              child: Text("reset"),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(130, 0),
                backgroundColor: Colors.orange,
                foregroundColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
