import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WidgetScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('WidgetScreen2')),
        body: Center(
            child: RaisedButton(
          child: Text('Botón valor'),
          onPressed: () {
            Navigator.pop(context, 'Mi valor desde la pantalla 2');
          },
        )));
  }
}
