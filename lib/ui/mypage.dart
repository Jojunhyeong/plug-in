import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.network(
                    'https://www.kindpng.com/picc/m/32-329306_hamdan-azhar-emoji-with-beard-and-glasses-hd.png',
                    width: 200,
                    height: 250,
                  ),
                ),
                Text(
                  "최현웅",
                  style: TextStyle(fontSize: 50),
                ),
              ],
            ),
            Text("Today",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(
              "3.2km",
              style: TextStyle(fontSize: 60, color: Colors.lightGreen),
            ),
            Text("Total",
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, height: 3)),
            Text("31.2km",
                style: TextStyle(fontSize: 60, color: Colors.lightGreen)),
            Text("My Routes",
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, height: 3)),
            Image.network(
              'https://postfiles.pstatic.net/MjAyMjAzMjFfMjEw/MDAxNjQ3ODc0MzEwNzE4.8Rm78nE_Df6io33Xp28n4k7cyPNbmcRLnTVxECV8G4sg.uUmwW2NeZBJL0fmW-yOv243l8BrhB8UF8pQ1koc2MBQg.PNG.jojh0323/Screen_Shot_2022-03-21_at_11.20.17_PM.png?type=w773',
            )
          ],
        ),
      ),
    );
  }
}
