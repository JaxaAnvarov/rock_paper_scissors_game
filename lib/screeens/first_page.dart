
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:imtihon3/screeens/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[(Random().nextInt(8) + 1) * 100],
      appBar: appBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          firstRow(context),
          secondRow(),
          thirdRow(),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        "Qaysi oyinni oynamoqchisiz !",
        style: TextStyle(
          color: Colors.yellow,
          fontSize: 22.0,
          fontStyle: FontStyle.italic,
        ),
      ),
      centerTitle: true,
    );
  }

  Row thirdRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        GestureDetector(
          child: Container(
            alignment: Alignment.center,
            height: 150.0,
            width: 150.0,
            child: Text(
              "Clash of Clans",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20.0,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                end: Alignment.centerRight,
                begin: Alignment.centerLeft,
                colors: [Colors.lime, Colors.blueGrey],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 7.0,
                  offset: Offset(0, 6),
                ),
              ],
              border: Border.all(
                color: Colors.pink,
                width: 1.0,
              ),
            ),
          ),
        ),
        GestureDetector(
          child: Container(
            alignment: Alignment.center,
            height: 150.0,
            width: 150.0,
            child: Text(
              "Pubge",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20.0,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                end: Alignment.centerRight,
                begin: Alignment.centerLeft,
                colors: [Colors.cyan, Colors.blue],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 7.0,
                  offset: Offset(0, 6),
                ),
              ],
              border: Border.all(
                color: Colors.pink,
                width: 1.0,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row secondRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        GestureDetector(
          child: Container(
            alignment: Alignment.center,
            height: 150.0,
            width: 150.0,
            child: Text(
              "Quiz Game",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20.0,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                end: Alignment.centerRight,
                begin: Alignment.centerLeft,
                colors: [Colors.yellow, Colors.orange, Colors.red],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 7.0,
                  offset: Offset(0, 6),
                ),
              ],
              border: Border.all(
                color: Colors.pink,
                width: 1.0,
              ),
            ),
          ),
        ),
        GestureDetector(
          child: Container(
            alignment: Alignment.center,
            height: 150.0,
            width: 150.0,
            child: Text(
              "Guess Number",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20.0,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                end: Alignment.centerRight,
                begin: Alignment.centerLeft,
                colors: [Colors.indigo, Colors.pink],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 7.0,
                  offset: Offset(0, 6),
                ),
              ],
              border: Border.all(
                color: Colors.pink,
                width: 1.0,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row firstRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        GestureDetector(
          child: Container(
            alignment: Alignment.center,
            height: 150.0,
            width: 150.0,
            child: Text(
              "Qog'oz qaychi \noyini",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20.0,
              ),
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.pink,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                  end: Alignment.centerRight,
                  begin: Alignment.centerLeft,
                  colors: [Colors.cyan, Colors.blue, Colors.indigo]),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 7.0,
                  offset: Offset(0, 6),
                ),
              ],
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondPage(),
              ),
            );
          },
        ),
        GestureDetector(
          child: Container(
            alignment: Alignment.center,
            height: 150.0,
            width: 150.0,
            child: Text(
              "Tic Tak Toe",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20.0,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                end: Alignment.centerRight,
                begin: Alignment.centerLeft,
                colors: [Colors.pink, Colors.indigo],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 7.0,
                  offset: Offset(0, 6),
                ),
              ],
              border: Border.all(
                color: Colors.pink,
                width: 1.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
