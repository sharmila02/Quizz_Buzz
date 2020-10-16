import 'package:QuizBuzz/splashscreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "QuizzBuzz",
      theme: ThemeData(primarySwatch: Colors.grey),
      home: SplashScreen(),
    );
  }
}
