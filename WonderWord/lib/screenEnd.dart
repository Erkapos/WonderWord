import 'package:CrossWordGame/genre.dart';
import 'package:flutter/material.dart';

class screenEnd extends StatelessWidget {
  const screenEnd({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent[100],
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 100)),
          Text("Game Over !!",
              style: TextStyle(
                  shadows: [
                    Shadow(
                      blurRadius: 5.0,
                      color: Colors.blue,
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
                  fontSize: 90,
                  color: Colors.pink[400].withOpacity(0.85),
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Open Sans'),
              textAlign: TextAlign.center),
          Padding(padding: EdgeInsets.only(top: 50)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Your Score: ",
                  style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 5.0,
                          color: Colors.blue,
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
                      fontSize: 50,
                      color: Colors.yellow[200].withOpacity(0.85),
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Open Sans'),
                  textAlign: TextAlign.center),
              Text("$totalScore",
                  style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 5.0,
                          color: Colors.blue,
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
                      fontSize: 50,
                      color: Colors.yellow[200].withOpacity(0.85),
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Open Sans'),
                  textAlign: TextAlign.center),
            ],
          ),
          Spacer(flex: 6),
          Align(
            alignment: Alignment.bottomCenter,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const genre()),
                );
                totalScore = 0;
              },
              color: Colors.greenAccent[100],
              shape: StadiumBorder(),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 70),
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                ),
                child: Text(
                  "MENU",
                  style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 5.0,
                          color: Colors.greenAccent,
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
                      fontSize: 50,
                      color: Colors.orangeAccent[200].withOpacity(0.85),
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Open Sans'),
                ),
              ),
            ),
          ),
          Spacer(flex: 1),
        ],
      ),
    );
  }
}
