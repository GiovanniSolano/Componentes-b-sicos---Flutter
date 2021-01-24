import 'package:flutter/material.dart';

class MyGridView extends StatefulWidget {
  @override
  _MyGridViewState createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  List<Color> mycolors = [Colors.red, Colors.teal, Colors.black];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          itemCount: mycolors.length,
          scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 10), // delegar la funcionalidad a un sub widget
          itemBuilder: (context, int index) {
            return Container(color: mycolors[index]);
          },
          // crossAxisCount: 2,
          // mainAxisSpacing: 10,
          // crossAxisSpacing: 10,
          // scrollDirection: Axis.horizontal,
          // padding: EdgeInsets.all(10),
          // children: <Widget>[
          //   Container(color: Colors.grey),
          //   Container(color: Colors.green),
          //   Container(color: Colors.red),
          // ],
        ),
      ),
    );
  }
}
