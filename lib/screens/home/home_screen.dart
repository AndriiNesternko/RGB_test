import 'dart:math';
import 'package:flutter/material.dart';
import 'package:test_task/constants.dart';
import 'center_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int red = 0;
  int green = 0;
  int blue = 0;

  void changeColor() {
    setState(() {
      red = Random().nextInt(256);
      green = Random().nextInt(256);
      blue = Random().nextInt(256);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: GestureDetector(
        onTap: () => changeColor(),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromRGBO(red, green, blue, 1.0),
          child: CenterCard(),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.white70,
      title: Text(
        'Red: ${red.toString()}   Green: ${green.toString()}   Blue: ${blue.toString()}',
        style: kTitleTextStyle,
      ),
    );
  }
}
