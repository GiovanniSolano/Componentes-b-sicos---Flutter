import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.grey,
          margin: EdgeInsets.only(top: 25),
          shadowColor: Colors.green,
          elevation: 40,
          child: SizedBox(
              width: 200,
              height: 100,
              child: Text(
                'Mi texto en el card',
                style: TextStyle(color: Colors.white),
              )),
        ),
      ),
    );
  }
}
