import 'package:components/WidgetArgument.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final WidgetArgument arguments = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(title: Text(arguments.title)),
      body: Center(
        child: RaisedButton(
          child: Text('To Home from ${arguments.nume}'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
