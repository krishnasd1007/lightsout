import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'board.dart';

void main() {
  runApp(Rules());
}

class Rules extends StatefulWidget {
  @override
  _RulesState createState() => _RulesState();
}

class _RulesState extends State<Rules> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GameRules(),
    );
  }
}

class GameRules extends StatefulWidget {
  @override
  _GameRulesState createState() => _GameRulesState();
}

class _GameRulesState extends State<GameRules> {
  var ht, wt;
  @override
  Widget build(BuildContext context) {
    ht = MediaQuery.of(context).size.height;
    wt = MediaQuery.of(context).size.width;

    return Container(
      height: ht,
      width: wt,
      color: Colors.orange[300],
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(padding: EdgeInsets.all(ht * 0.05)),
            Container(
              height: ht * 0.1,
              width: wt * 0.4,
              color: Colors.redAccent,
              child: Center(
                child: Material(
                  color: Colors.redAccent,
                  child: Text(
                    'RULES',
                    style: TextStyle(
                      fontSize: ht * 0.03,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(ht * 0.05)),
            Center(
              child: Container(
                height: ht * 0.5,
                width: wt * 0.8,
                child: Material(
                  color: Colors.orange[300],
                  child: Text(
                    'When a Light is switched ON or OFF the adjacent lights also get switched ON or OFF \nThe goal is to switch all the lights OFF',
                    style: TextStyle(
                      fontSize: ht * 0.04,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: ht * 0.07,
              width: wt * 0.4,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(ht * 0.07)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LightOut()));
                },
                color: Colors.blueAccent,
                child: Icon(Icons.arrow_back),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
