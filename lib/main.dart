import 'package:components/components/card.dart';
import 'package:flutter/material.dart';

// import 'package:components/components/listtile.dart';
// import 'components/container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyCard(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 2,
            child: Container(color: Colors.red),
          ),
          Flexible(
            flex: 3,
            child: Container(color: Colors.blue),
          ),
          Flexible(
            flex: 1,
            child: Container(color: Colors.green),
          ),
          Flexible(
            flex: 1,
            child: Container(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
