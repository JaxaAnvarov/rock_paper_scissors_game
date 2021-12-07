

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:imtihon3/screeens/scores_page.dart';

class ThirdPage extends StatefulWidget {
  Color colors;
  ThirdPage({required this.colors});
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

List<Text> textHands = [
  Text(
    "✊ ",
    style: TextStyle(fontSize: 26.0),
  ),
  Text(
    "✋",
    style: TextStyle(fontSize: 26.0),
  ),
  Text(
    "✌️",
    style: TextStyle(fontSize: 26.0),
  ),
];
Text randomText = Text("Start");

var tappedIndex;
var randomIndex;
String gameFinish = 'Start Game';

var gameNumber = 0;
var skorComp = 0;
var skorGamer = 0;

class _ThirdPageState extends State<ThirdPage> {
  @override
  void initState() {
    super.initState();
    tappedIndex = 0;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Qog'oz qaychi oyini",
          style: TextStyle(
            color: Colors.indigo,
            fontSize: 24.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
          child: Container(
        margin: EdgeInsets.only(top: 25),
        child: Column(
          children: <Widget>[
            Text(
              gameFinish,
              style: TextStyle(fontSize: 25),
            ),
            Text(
              "Game Counter :   $gameNumber",
              style: TextStyle(fontSize: 15),
            ),
            Text(
              "Computer  $skorComp - $skorGamer  Gamer",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 50),
            SizedBox(
              child: randomText,
              height: 160,
              width: 120,
            ),
            SizedBox(height: 25),
            ElevatedButton(
              child: Text("Game"),
              style: ElevatedButton.styleFrom(
                primary: Colors.indigoAccent,
              ),
              onPressed: () {
                setState(() {
                  randomIndex = RandomText();
                  randomText = textHands[randomIndex];
                  whoWon(randomIndex + 1, tappedIndex);
                });
              },
            ),
            ElevatedButton(
              child: Text('Reset'),
              style: ElevatedButton.styleFrom(primary: Colors.indigoAccent),
              onPressed: () {
                setState(() {
                  resetGame();
                });
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.indigo, fixedSize: Size(150.0, 30.0)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CroresPage(),
                  ),
                );
              },
              child: Text(
                "Scores",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  child: InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      child: textHands[0],
                      width: 100,
                      height: 100,
                    ),
                    onTap: () {
                      setState(() {
                        tappedIndex = 1;
                      });
                    },
                  ),
                  color:
                      tappedIndex == 1 ? Colors.redAccent : Colors.greenAccent,
                  width: 120,
                ),
                Container(
                  child: InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      child: textHands[1],
                      width: 100,
                      height: 100,
                    ),
                    onTap: () {
                      setState(() {
                        tappedIndex = 2;
                      });
                    },
                  ),
                  color:
                      tappedIndex == 2 ? Colors.redAccent : Colors.greenAccent,
                  width: 120,
                ),
                Container(
                  child: InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        child: textHands[2],
                        width: 100,
                        height: 100,
                      ),
                      onTap: () {
                        setState(() {
                          tappedIndex = 3;
                        });
                      }),
                  color:
                      tappedIndex == 3 ? Colors.redAccent : Colors.greenAccent,
                  width: 120,
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}

int RandomText() {
  var rnd = new Random();

  var rand_num;
  rand_num = rnd.nextInt(3);

  return rand_num;
}

void whoWon(int compIndex, int gamerIndex) {
  gameNumber++;
  if (gameNumber == 4) {
    gameNumber = 0;
  }

  if (compIndex == gamerIndex) {
    gameFinish = "Scoreless!";
  } else {
    if (compIndex == 1) {
      if (gamerIndex == 2) {
        gameFinish = "Gamer Win!";
        skorGamer++;
      } else {
        gameFinish = "Computer Win!";
        skorComp++;
      }
    } else if (compIndex == 2) {
      if (gamerIndex == 1) {
        gameFinish = "Computer Win!";
        skorComp++;
      } else {
        gameFinish = "Gamer Win!";
        skorGamer++;
      }
    } else {
      if (gamerIndex == 1) {
        gameFinish = "Gamer Win!";
        skorGamer++;
      } else {
        gameFinish = "Computer Win!";
        skorComp++;
      }
    }
  }
}

void resetGame() {
  randomText = Text("Start");
  gameFinish = 'Start Game';
  tappedIndex = 0;
  gameNumber = 0;
  skorComp = 0;
  skorGamer = 0;
}

gameFinished() {
  if (skorComp == 5 || skorGamer == 5) {
    if (skorComp == 5) {
      return true;
    } else {
      return false;
    }
  }
}
