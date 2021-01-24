import 'package:flutter/material.dart';

class MyListTile extends StatefulWidget {
  @override
  _MyListTileState createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          //ListTile con titulo
          Card(child: ListTile(title: Text('Titulo'))),
          Card(
              child: ListTile(
                  leading: Icon(Icons.av_timer), title: Text('Titulo'))),
          Card(
              child: ListTile(
                  // dense: true, // Compactar
                  trailing: Icon(Icons.more_vert),
                  leading: Icon(Icons.av_timer),
                  title: Text('Titulo'))),
          Card(
              child: ListTile(
                  onLongPress: () {
                    setState(() {
                      (!isSelected) ? isSelected = true : isSelected = false;
                    });
                  },
                  selected: isSelected, // Azul, como si estuviera seleccionado
                  // enabled: false, // deshabilitar campo
                  subtitle: Text(
                      "Subtitulo, mi subtitulo tiene más texto pero da igual porque para eso existe"),
                  trailing: Icon(Icons.more_vert),
                  leading: Icon(Icons.av_timer),
                  isThreeLine: true, // Tres lineas, acomodar texto
                  title: Text('Titulo'))),
        ],
      ),
    );
  }
}
