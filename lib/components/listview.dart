import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  List<String> titulos = <String>['Widget1 Prueba', 'Widget2', 'Widget3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        child: SafeArea(
          child: ListView.builder(
            padding: EdgeInsets.all(10),
            scrollDirection: Axis.horizontal,
            // physics: NeverScrollableScrollPhysics(), No scroll
            reverse: true, // Empezar por el último item
            itemCount: titulos.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Card(
                  color: Colors.amber[200],
                  child: ListTile(
                    title: Text(titulos[index]),
                  ),
                ),
              );
            },
            // ListView tiene Scroll por defecto
            // children: <Widget>[
            //   Card(
            //       color: Colors.amber[500],
            //       child: ListTile(
            //         title: Text("Widget 1"),
            //       )),
            //   Card(
            //       color: Colors.amber[300],
            //       child: ListTile(
            //         title: Text("Widget 2"),
            //       )),
            //   Card(
            //       color: Colors.amber[100],
            //       child: ListTile(
            //         title: Text("Widget 3"),
            //       )),
            // ],
          ),
        ),
      ),
    );
  }
}
