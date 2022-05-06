import 'package:CrossWordGame/genre.dart';
import 'package:flutter/material.dart';

class startScreen extends StatelessWidget {
  const startScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 450,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/background.png'),
                      fit: BoxFit.fill)),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 30,
                    width: 80,
                    height: 200,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/light-1.png'))),
                    ),
                  ),
                  Positioned(
                    left: 140,
                    width: 80,
                    height: 150,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/light-2.png'))),
                    ),
                  ),
                  Positioned(
                    right: 40,
                    top: 40,
                    width: 80,
                    height: 150,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/clock.png'))),
                    ),
                  ),
                  Positioned(
                    left: -40,
                    top: 90,
                    width: 300,
                    height: 400,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/Picture1.png'))),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 250,
                    child: Container(
                      child: Center(
                        child: Text(
                          "WonderWord",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const genre()),
                  );
                },
                shape: StadiumBorder(),
                color: Colors.greenAccent[100],
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    "START",
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.purpleAccent[200].withOpacity(0.85),
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Open Sans'),
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
