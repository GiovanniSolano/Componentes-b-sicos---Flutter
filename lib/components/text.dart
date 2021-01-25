import 'package:flutter/material.dart';

class MyTextWidget extends StatefulWidget {
  @override
  _MyTextWidgetState createState() => _MyTextWidgetState();
}

class _MyTextWidgetState extends State<MyTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Textos')),
      body: Column(
        children: <Widget>[
          // texto estandar - un estilo

          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              'Texto prueba estandar',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: Colors.grey),
            ),
          ),

          //Texto enriquecido. Permite mostrar cadenas de texto con diferentes estilos
          RichText(
              text: TextSpan(
                  text: 'Texto enriquecido',
                  style: TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.normal,
                      color: Colors.black),
                  children: <TextSpan>[
                TextSpan(
                    text: ' Bold ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue)),
                TextSpan(text: 'Texto regular')
              ]))
        ],
      ),
    );
  }
}
