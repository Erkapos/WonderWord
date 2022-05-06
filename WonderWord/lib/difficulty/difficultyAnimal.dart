import 'package:CrossWordGame/animal/animalEasy.dart';
import 'package:CrossWordGame/animal/animalHard.dart';
import 'package:CrossWordGame/animal/animalMedium.dart';
import 'package:flutter/material.dart';

class difficultyAnimal extends StatelessWidget {
  const difficultyAnimal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        title: const Text('Choose difficulty'),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 10)),
          Text(
            "Animal",
            style: TextStyle(
                shadows: [
                  Shadow(
                    blurRadius: 5.0,
                    color: Colors.pink,
                    offset: Offset(5.0, 5.0),
                  ),
                ],
                fontSize: 50,
                color: Colors.indigo[200].withOpacity(0.85),
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'Open Sans'),
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Image.asset(
            'assets/images/fox.png',
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
                            MaterialPageRoute(
                                builder: (context) => animalEasy()),
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
                                builder: (context) => animalMedium()),
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
                          MaterialPageRoute(builder: (context) => animalHard()),
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
