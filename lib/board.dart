import 'package:flutter/material.dart';
import 'rules.dart';
import 'dart:math';
import 'menu.dart';

void main() {
  runApp(LightOut());
}

class LightOut extends StatefulWidget {
  @override
  _LightOutState createState() => _LightOutState();
}

class _LightOutState extends State<LightOut> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Board(),
    );
  }
}

class Board extends StatefulWidget {
  @override
  _BoardState createState() => _BoardState();
}

class _BoardState extends State<Board> {
  var ht, wt;
  List<bool> press = [
    true,
    false,
    false,
    false,
    false,
    true,
    false,
    true,
    false
  ];

  var switchState = [];
  void switches() {
    Random s = new Random();
    for (var i = 0; i < 9; i++) {
      switchState[i] = s.nextInt(2);
      if (switchState[i] == 1) {
        press[i] = false;
      } else {
        press[i] = true;
      }
    }
  }

  Widget light0() {
    return Material(
      child: Container(
        height: ht * 0.1,
        width: wt * 0.2,
        child: RaisedButton(
          color: press[0] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[0] = !press[0];
              press[1] = !press[1];
              press[3] = !press[3];
            })
          },
        ),
      ),
    );
  }

  Widget light1() {
    return Material(
      child: Container(
        height: ht * 0.1,
        width: wt * 0.2,
        child: RaisedButton(
          color: press[1] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[1] = !press[1];
              press[0] = !press[0];
              press[2] = !press[2];
              press[4] = !press[4];
            })
          },
        ),
      ),
    );
  }

  Widget light2() {
    return Material(
      child: Container(
        height: ht * 0.1,
        width: wt * 0.2,
        child: RaisedButton(
          color: press[2] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[2] = !press[2];
              press[1] = !press[1];
              press[5] = !press[5];
            })
          },
        ),
      ),
    );
  }

  Widget light3() {
    return Material(
      child: Container(
        height: ht * 0.1,
        width: wt * 0.2,
        child: RaisedButton(
          color: press[3] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[3] = !press[3];
              press[0] = !press[0];
              press[4] = !press[4];
            })
          },
        ),
      ),
    );
  }

  Widget light4() {
    return Material(
      child: Container(
        height: ht * 0.1,
        width: wt * 0.2,
        child: RaisedButton(
          color: press[4] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[4] = !press[4];
              press[1] = !press[1];
              press[3] = !press[3];
              press[7] = !press[7];
              press[5] = !press[5];
            })
          },
        ),
      ),
    );
  }

  Widget light5() {
    return Material(
      child: Container(
        height: ht * 0.1,
        width: wt * 0.2,
        child: RaisedButton(
          color: press[5] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[5] = !press[5];
              press[2] = !press[2];
              press[4] = !press[4];
              press[8] = !press[8];
            })
          },
        ),
      ),
    );
  }

  Widget light6() {
    return Material(
      child: Container(
        height: ht * 0.1,
        width: wt * 0.2,
        child: RaisedButton(
          color: press[6] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[6] = !press[6];
              press[3] = !press[3];
              press[7] = !press[7];
            })
          },
        ),
      ),
    );
  }

  Widget light7() {
    return Material(
      child: Container(
        height: ht * 0.1,
        width: wt * 0.2,
        child: RaisedButton(
          color: press[7] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[7] = !press[7];
              press[6] = !press[6];
              press[4] = !press[4];
              press[8] = !press[8];
            })
          },
        ),
      ),
    );
  }

  Widget light8() {
    return Material(
      child: Container(
        height: ht * 0.1,
        width: wt * 0.2,
        child: RaisedButton(
          color: press[8] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[8] = !press[8];
              press[7] = !press[7];
              press[5] = !press[5];
            })
          },
        ),
      ),
    );
  }

  Widget lightColumn() {
    return Material(
      color: Colors.orange[300],
      child: SingleChildScrollView(
        child: Container(
          height: ht,
          width: wt,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  light0(),
                  light1(),
                  light2(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  light3(),
                  light4(),
                  light5(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  light6(),
                  light7(),
                  light8(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: ht * 0.07,
                    width: wt * 0.4,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(ht * 0.07),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Rules()));
                      },
                      color: Colors.redAccent,
                      child: Text(
                        'RULES',
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: ht * 0.03,
                            fontWeight: FontWeight.bold),
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
                            MaterialPageRoute(builder: (context) => Menu()));
                      },
                      color: Colors.blueAccent,
                      child: Text(
                        'MENU',
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: ht * 0.03,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ht = MediaQuery.of(context).size.height;
    wt = MediaQuery.of(context).size.width;
    return Container(
      height: ht,
      width: wt,
      child: Center(
        child: lightColumn(),
      ),
    );
  }
}
