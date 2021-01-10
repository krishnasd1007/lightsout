import 'package:flutter/material.dart';
import 'bigboard.dart';
import 'board.dart';

void main() {
  runApp(Menu());
}

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    var ht = MediaQuery.of(context).size.height;
    var wt = MediaQuery.of(context).size.width;
    return Container(
      height: ht,
      width: wt,
      color: Colors.orange[300],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: ht * 0.2,
              width: wt * 0.8,
              child: RaisedButton(
                color: Colors.redAccent,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LightOut()));
                },
                child: Text(
                  '3 X 3 GAME',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: ht * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              height: ht * 0.2,
              width: wt * 0.8,
              child: RaisedButton(
                color: Colors.blueAccent,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LightsOut()));
                },
                child: Text(
                  '5 X 5 GAME',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: ht * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
