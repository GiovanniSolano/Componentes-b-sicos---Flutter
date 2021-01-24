import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.yellow,
        margin: EdgeInsets.only(top: 35, left: 35),
        decoration: BoxDecoration(
            // border: Border.all(color: Colors.black),
            shape: BoxShape.circle,
            color: Colors.blue),
        padding: EdgeInsets.all(16),
        child: Icon(Icons.accessible_forward, color: Colors.white),
      ),
    );
  }
}
