import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class MyButtonsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ButtonBar(
        children: <Widget>[
          // FlatButton
          FlatButton(
            color: Colors.green,
            padding: EdgeInsets.all(15),
            splashColor: Colors.black,
            child: Text('FlatButton'),
            onPressed: () {},
          ),
          // IconButton
          IconButton(
            icon: Icon(Icons.accessible_forward),
            onPressed: () {},
          ),
          // OutlineButton
          OutlineButton(
            highlightedBorderColor: Colors.blue,
            highlightColor: Colors.black,
            child: Text('OutlineButton'),
            onPressed: () {},
          ),
          // RaisedButton - Contiene una elevación por defecto
          RaisedButton(
            onPressed: () {},
            textColor: Colors.black,
            padding: EdgeInsets.all(0.0),
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: <Color>[Colors.white, Colors.blue])),
              padding: const EdgeInsets.all(10.0),
              child:
                  const Text('Gradient Button', style: TextStyle(fontSize: 20)),
            ),
          )
        ],
      )),

      // FloatingButton
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.access_alarms),
      ),
    );
  }
}

// RaisedButton ejemplo básico

/* RaisedButton(
  onPressed: () {},
  child: 
    const Text('Raised Button', style: TextStyle(fontSize: 20)),
), */
