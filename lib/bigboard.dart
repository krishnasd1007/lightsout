import 'package:flutter/material.dart';
import 'rules.dart';
import 'menu.dart';

void main() {
  runApp(LightsOut());
}

class LightsOut extends StatefulWidget {
  @override
  _LightsOutState createState() => _LightsOutState();
}

class _LightsOutState extends State<LightsOut> {
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
    false,
    true,
    false,
    false,
    false,
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    false,
    false,
    false,
    true,
    false
  ];

  Widget light0() {
    return Material(
      child: Container(
        height: ht * 0.05,
        width: wt * 0.1,
        child: RaisedButton(
          color: press[0] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[0] = !press[0];
              press[1] = !press[1];
              press[5] = !press[5];
            })
          },
        ),
      ),
    );
  }

  Widget light1() {
    return Material(
      child: Container(
        height: ht * 0.05,
        width: wt * 0.1,
        child: RaisedButton(
          color: press[1] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[1] = !press[1];
              press[0] = !press[0];
              press[2] = !press[2];
              press[6] = !press[6];
            })
          },
        ),
      ),
    );
  }

  Widget light2() {
    return Material(
      child: Container(
        height: ht * 0.05,
        width: wt * 0.1,
        child: RaisedButton(
          color: press[2] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[2] = !press[2];
              press[1] = !press[1];
              press[3] = !press[3];
              press[7] = !press[7];
            })
          },
        ),
      ),
    );
  }

  Widget light3() {
    return Material(
      child: Container(
        height: ht * 0.05,
        width: wt * 0.1,
        child: RaisedButton(
          color: press[3] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[3] = !press[3];
              press[2] = !press[2];
              press[4] = !press[4];
              press[8] = !press[8];
            })
          },
        ),
      ),
    );
  }

  Widget light4() {
    return Material(
      child: Container(
        height: ht * 0.05,
        width: wt * 0.1,
        child: RaisedButton(
          color: press[4] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[4] = !press[4];
              press[9] = !press[9];
              press[3] = !press[3];
            })
          },
        ),
      ),
    );
  }

  Widget light5() {
    return Material(
      child: Container(
        height: ht * 0.05,
        width: wt * 0.1,
        child: RaisedButton(
          color: press[5] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[5] = !press[5];
              press[0] = !press[0];
              press[6] = !press[6];
              press[10] = !press[10];
            })
          },
        ),
      ),
    );
  }

  Widget light6() {
    return Material(
      child: Container(
        height: ht * 0.05,
        width: wt * 0.1,
        child: RaisedButton(
          color: press[6] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[1] = !press[1];
              press[5] = !press[5];
              press[7] = !press[7];
              press[11] = !press[11];
              press[6] = !press[6];
            })
          },
        ),
      ),
    );
  }

  Widget light7() {
    return Material(
      child: Container(
        height: ht * 0.05,
        width: wt * 0.1,
        child: RaisedButton(
          color: press[7] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[7] = !press[7];
              press[2] = !press[2];
              press[6] = !press[6];
              press[8] = !press[8];
              press[12] = !press[12];
            })
          },
        ),
      ),
    );
  }

  Widget light8() {
    return Material(
      child: Container(
        height: ht * 0.05,
        width: wt * 0.1,
        child: RaisedButton(
          color: press[8] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[8] = !press[8];
              press[7] = !press[7];
              press[3] = !press[3];
              press[9] = !press[9];
              press[13] = !press[13];
            })
          },
        ),
      ),
    );
  }

  Widget light9() {
    return Material(
      child: Container(
        height: ht * 0.05,
        width: wt * 0.1,
        child: RaisedButton(
          color: press[9] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[9] = !press[9];
              press[4] = !press[4];
              press[8] = !press[8];
              press[14] = !press[14];
            })
          },
        ),
      ),
    );
  }

  Widget light10() {
    return Material(
      child: Container(
        height: ht * 0.05,
        width: wt * 0.1,
        child: RaisedButton(
          color: press[10] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[10] = !press[10];
              press[5] = !press[5];
              press[11] = !press[11];
              press[15] = !press[15];
            })
          },
        ),
      ),
    );
  }

  Widget light11() {
    return Material(
      child: Container(
        height: ht * 0.05,
        width: wt * 0.1,
        child: RaisedButton(
          color: press[11] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[11] = !press[11];
              press[6] = !press[6];
              press[10] = !press[10];
              press[12] = !press[12];
              press[16] = !press[16];
            })
          },
        ),
      ),
    );
  }

  Widget light12() {
    return Material(
      child: Container(
        height: ht * 0.05,
        width: wt * 0.1,
        child: RaisedButton(
          color: press[12] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[12] = !press[12];
              press[7] = !press[7];
              press[11] = !press[11];
              press[17] = !press[17];
              press[13] = !press[13];
            })
          },
        ),
      ),
    );
  }

  Widget light13() {
    return Material(
      child: Container(
        height: ht * 0.05,
        width: wt * 0.1,
        child: RaisedButton(
          color: press[13] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[8] = !press[8];
              press[12] = !press[12];
              press[14] = !press[14];
              press[18] = !press[18];
              press[13] = !press[13];
            })
          },
        ),
      ),
    );
  }

  Widget light14() {
    return Material(
      child: Container(
        height: ht * 0.05,
        width: wt * 0.1,
        child: RaisedButton(
          color: press[14] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[14] = !press[14];
              press[19] = !press[19];
              press[9] = !press[9];
              press[13] = !press[13];
            })
          },
        ),
      ),
    );
  }

  Widget light15() {
    return Material(
      child: Container(
        height: ht * 0.05,
        width: wt * 0.1,
        child: RaisedButton(
          color: press[15] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[15] = !press[15];
              press[10] = !press[10];
              press[16] = !press[16];
              press[20] = !press[20];
            })
          },
        ),
      ),
    );
  }

  Widget light16() {
    return Material(
      child: Container(
        height: ht * 0.05,
        width: wt * 0.1,
        child: RaisedButton(
          color: press[16] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[16] = !press[16];
              press[11] = !press[11];
              press[15] = !press[15];
              press[17] = !press[17];
              press[21] = !press[21];
            })
          },
        ),
      ),
    );
  }

  Widget light17() {
    return Material(
      child: Container(
        height: ht * 0.05,
        width: wt * 0.1,
        child: RaisedButton(
          color: press[17] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[17] = !press[17];
              press[12] = !press[12];
              press[16] = !press[16];
              press[18] = !press[18];
              press[22] = !press[22];
            })
          },
        ),
      ),
    );
  }

  Widget light18() {
    return Material(
      child: Container(
        height: ht * 0.05,
        width: wt * 0.1,
        child: RaisedButton(
          color: press[18] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[18] = !press[18];
              press[13] = !press[13];
              press[17] = !press[17];
              press[19] = !press[19];
              press[23] = !press[23];
            })
          },
        ),
      ),
    );
  }

  Widget light19() {
    return Material(
      child: Container(
        height: ht * 0.05,
        width: wt * 0.1,
        child: RaisedButton(
          color: press[19] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[19] = !press[19];
              press[18] = !press[18];
              press[14] = !press[14];
              press[24] = !press[24];
            })
          },
        ),
      ),
    );
  }

  Widget light20() {
    return Material(
      child: Container(
        height: ht * 0.05,
        width: wt * 0.1,
        child: RaisedButton(
          color: press[20] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[20] = !press[20];
              press[15] = !press[15];
              press[21] = !press[21];
            })
          },
        ),
      ),
    );
  }

  Widget light21() {
    return Material(
      child: Container(
        height: ht * 0.05,
        width: wt * 0.1,
        child: RaisedButton(
          color: press[21] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[21] = !press[21];
              press[16] = !press[16];
              press[15] = !press[15];
              press[17] = !press[17];
            })
          },
        ),
      ),
    );
  }

  Widget light22() {
    return Material(
      child: Container(
        height: ht * 0.05,
        width: wt * 0.1,
        child: RaisedButton(
          color: press[22] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[22] = !press[22];
              press[21] = !press[21];
              press[23] = !press[23];
              press[17] = !press[17];
            })
          },
        ),
      ),
    );
  }

  Widget light23() {
    return Material(
      child: Container(
        height: ht * 0.05,
        width: wt * 0.1,
        child: RaisedButton(
          color: press[23] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[23] = !press[23];
              press[22] = !press[22];
              press[24] = !press[24];
              press[18] = !press[18];
            })
          },
        ),
      ),
    );
  }

  Widget light24() {
    return Material(
      child: Container(
        height: ht * 0.05,
        width: wt * 0.1,
        child: RaisedButton(
          color: press[24] ? Colors.lightGreenAccent : Colors.black38,
          onPressed: () => {
            setState(() {
              press[24] = !press[24];
              press[23] = !press[23];
              press[19] = !press[19];
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
                  light3(),
                  light4(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  light5(),
                  light6(),
                  light7(),
                  light8(),
                  light9(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  light10(),
                  light11(),
                  light12(),
                  light13(),
                  light14(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  light15(),
                  light16(),
                  light17(),
                  light18(),
                  light19(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  light20(),
                  light21(),
                  light22(),
                  light23(),
                  light24(),
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
