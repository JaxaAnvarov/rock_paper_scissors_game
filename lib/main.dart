import 'package:flutter/material.dart';
import 'package:imtihon3/qoshimcha/calculyator.dart';
import 'package:imtihon3/screeens/first_page.dart';
import 'package:imtihon3/screeens/scores_page.dart';
import 'package:imtihon3/screeens/second_page.dart';
import 'package:imtihon3/screeens/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  FirstPage(),
    );
  }
}
 