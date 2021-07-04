import 'package:flutter/material.dart';
import 'package:test_task/constants.dart';

class CenterCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Hey there', style: kTitleTextStyle),
          Text(
            'Tap anywhere to change color',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 13.0,
            ),
          )
        ],
      ),
    ));
  }
}
