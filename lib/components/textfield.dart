import 'package:flutter/material.dart';

class MyTextFieldWidget extends StatefulWidget {
  @override
  _MyTextFieldWidgetState createState() => _MyTextFieldWidgetState();
}

class _MyTextFieldWidgetState extends State<MyTextFieldWidget> {
  String _valueTextField = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Home'),
              onSubmitted: (value) {
                setState(() {
                  _valueTextField = value;
                });
              },
            ),
            Text("$_valueTextField")
          ],
        ),
      ),
    );
  }
}
