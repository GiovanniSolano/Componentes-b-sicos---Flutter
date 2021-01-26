import 'dart:async';

import 'package:flutter/material.dart';

class MyProgressIndicatorWidget extends StatefulWidget {
  @override
  _MyProgressIndicatorWidgetState createState() =>
      _MyProgressIndicatorWidgetState();
}

class _MyProgressIndicatorWidgetState extends State<MyProgressIndicatorWidget> {
  double _progress = 0;
  int duration = 1;
  void startTimer() {
    Timer.periodic(Duration(seconds: duration), (timer) {
      setState(() {
        if (_progress == duration) {
          timer.cancel();
        } else {
          _progress += 0.1;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 35.0),
            child: RaisedButton(
                child: Text('Arrancar timer'),
                onPressed: () {
                  setState(() {
                    _progress = 0;
                  });
                  startTimer();
                }),
          ),
          CircularProgressIndicator(
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation(Colors.amber),
              strokeWidth: 10,
              value: _progress),
          SizedBox(height: 50),
          LinearProgressIndicator(
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation(Colors.amber),
              minHeight: 10,
              value: _progress)
        ],
      )),
    );
  }
}
