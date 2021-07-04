import 'package:flutter/material.dart';
import 'package:test_task/screens/home/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'IndieFlower'),
      title: 'Flutter test task',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
