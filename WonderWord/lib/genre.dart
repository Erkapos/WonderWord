import 'package:CrossWordGame/difficulty/difficultyAnimal.dart';
import 'package:CrossWordGame/difficulty/difficultyFood.dart';
import 'package:CrossWordGame/difficulty/difficultyMovie.dart';
import 'package:CrossWordGame/difficulty/difficultyVideoGame.dart';
import 'package:flutter/material.dart';

var totalScore = 0;

class genre extends StatelessWidget {
  const genre({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: Center(
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const difficultyVideoGame()),
                );
              },
              child: Expanded(
                child: Container(
                  height: 175,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/controller.png'))),
                  child: Center(
                    child: Text(
                      "Game",
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
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const difficultyMovie()),
                );
              },
              child: Expanded(
                child: Container(
                  height: 175,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/video-player.png'))),
                  child: Center(
                    child: Text(
                      "Movie",
                      style: TextStyle(
                          shadows: [
                            Shadow(
                              blurRadius: 5.0,
                              color: Colors.yellow,
                              offset: Offset(5.0, 5.0),
                            ),
                          ],
                          fontSize: 50,
                          color: Colors.teal[400].withOpacity(0.85),
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Open Sans'),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const difficultyFood()),
                );
              },
              child: Expanded(
                child: Container(
                  height: 175,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/salad.png'))),
                  child: Center(
                    child: Text(
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
                          color: Colors.pink[300].withOpacity(0.85),
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Open Sans'),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const difficultyAnimal()),
                );
              },
              child: Expanded(
                child: Container(
                  height: 175,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/fox.png'))),
                  child: Center(
                    child: Text(
                      "Animal",
                      style: TextStyle(
                          shadows: [
                            Shadow(
                              blurRadius: 5.0,
                              color: Colors.pink[300],
                              offset: Offset(5.0, 5.0),
                            ),
                          ],
                          fontSize: 50,
                          color: Colors.indigo[200].withOpacity(0.85),
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Open Sans'),
                    ),
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
