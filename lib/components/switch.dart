import 'package:flutter/material.dart';

class MySwitchWidget extends StatefulWidget {
  @override
  _MySwitchWidgetState createState() => _MySwitchWidgetState();
}

class _MySwitchWidgetState extends State<MySwitchWidget> {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Switch(
          value: _switchValue,
          onChanged: (bool valueIn) {
            setState(() {
              _switchValue = valueIn;
            });
          }),
    ));
  }
}
