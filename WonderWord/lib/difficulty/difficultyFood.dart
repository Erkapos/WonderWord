import 'package:CrossWordGame/food/foodEasy.dart';
import 'package:CrossWordGame/food/foodHard.dart';
import 'package:CrossWordGame/food/foodMedium.dart';
import 'package:flutter/material.dart';

class difficultyFood extends StatelessWidget {
  const difficultyFood({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
        title: const Text('Choose difficulty'),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 10)),
          Text(
            "Food",
            style: TextStyle(
                shadows: [
                  Shadow(
                    blurRadius: 5.0,
                    color: Colors.blue,
                    offset: Offset(5.0, 5.0),
                  ),
                ],
                fontSize: 50,
                color: Colors.pink[400].withOpacity(0.85),
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'Open Sans'),
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Image.asset(
            'assets/images/salad.png',
            height: 120,
            width: 120,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          onPrimary: Colors.black87,
                          primary: Colors.orange[100],
                          minimumSize: Size(88, 36),
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.black)),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => foodEasy()),
                          );
                        },
                        child: Text(
                          "Level 1",
                          style: TextStyle(fontSize: 40),
                        )),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "Easy",
                      style: TextStyle(
                          shadows: [
                            Shadow(
                              blurRadius: 5.0,
                              color: Colors.blue,
                              offset: Offset(5.0, 5.0),
                            ),
                          ],
                          fontSize: 50,
                          color: Colors.yellow[500].withOpacity(0.85),
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Open Sans'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Text(
                        "Medium",
                        style: TextStyle(
                            shadows: [
                              Shadow(
                                blurRadius: 5.0,
                                color: Colors.blue,
                                offset: Offset(5.0, 5.0),
                              ),
                            ],
                            fontSize: 50,
                            color: Colors.orange[500].withOpacity(0.85),
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Open Sans'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          onPrimary: Colors.black87,
                          primary: Colors.orange[100],
                          minimumSize: Size(88, 36),
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.black)),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => foodMedium()),
                          );
                        },
                        child: Text(
                          "Level 2",
                          style: TextStyle(fontSize: 40),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        onPrimary: Colors.black87,
                        primary: Colors.orange[100],
                        minimumSize: Size(88, 36),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color: Colors.black)),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => foodHard()),
                        );
                      },
                      child: Text(
                        "Level 3",
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Text(
                      "Hard",
                      style: TextStyle(
                          shadows: [
                            Shadow(
                              blurRadius: 5.0,
                              color: Colors.blue,
                              offset: Offset(5.0, 5.0),
                            ),
                          ],
                          fontSize: 50,
                          color: Colors.red[500].withOpacity(0.85),
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Open Sans'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
