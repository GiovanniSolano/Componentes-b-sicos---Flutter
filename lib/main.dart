import 'package:components/components/WidgetScreen2.dart';
import 'package:flutter/material.dart';

import 'components/buttons.dart';

// import 'package:components/components/buttons.dart';
// import 'components/bottomnavigationbar.dart';
// import 'components/gridview.dart';
// import 'package:components/WidgetArgument.dart';
// import 'package:components/components/secondpage.dart';
// import 'package:components/components/text.dart';
// import 'components/listview.dart';
// import 'package:components/components/card.dart';
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
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => FirstPage(),
      //   '/secondPage': (context) => SecondPage()
      // },
      home: MyButtonsWidget(),
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
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Mi demo de TabBars"),
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: "Noticias",
                  ),
                  Tab(
                    text: "Favoritos",
                  ),
                  Tab(
                    text: "Contactos",
                  ),
                  Tab(
                    text: "Otros",
                  ),
                ],
              ),
            ),
            body: Center(
              child: TabBarView(children: [
                Text("Noticias"),
                Text("Favoritos"),
                Text("Contactos"),
                Text("Otros"),
              ]),
            )));
  }
}
// Imagenes e iconos
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             body: Column(
//       children: [
//         SizedBox(
//             width: MediaQuery.of(context).size.width,
//             child: Image(
//                 height: 150,
//                 fit: BoxFit.fitWidth,
//                 filterQuality: FilterQuality.high,
//                 // repeat: ImageRepeat.repeat,

//                 image: AssetImage('assets/images/Cat03.jpg'))),

//         // icono
//         Icon(
//           Icons.favorite,
//           color: Colors.amber,
//           size: 88,
//         )
//       ],
//     )));
//   }
// }

class ButtonToScreenNumber2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Vamos al widget 2 donde se devolvera un valor a esta vista'),
      onPressed: () {
        _navigateToScreen2AndWaitTheValue(context);
      },
    );
  }
}

// Método que lanza el widget 2 llamada WidgetScreen2() y espera el resultado de esta pantalla
_navigateToScreen2AndWaitTheValue(BuildContext context) async {
  final result = await Navigator.push(
      context, MaterialPageRoute(builder: (context) => WidgetScreen2()));

  Scaffold.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text('$result')));
}

// class FirstPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('First Page')),
//       body: Center(
//         child: RaisedButton(
//           child: Text('To Page 2'),
//           onPressed: () {
//             // Navegar utilizando rutas
//             Navigator.pushNamed(context, '/secondPage',
//                 arguments: WidgetArgument("Pasamos a la Screen 2", 2));

//             // Una manera, sin nombre de ruta
//             // Navigator.push(
//             //     context, MaterialPageRoute(builder: (context) => SecondPage()));
//           },
//         ),
//       ),
//     );
//   }
//   // _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: <Widget>[
//           Flexible(
//             flex: 2,
//             child: Container(color: Colors.red),
//           ),
//           Flexible(
//             flex: 3,
//             child: Container(color: Colors.blue),
//           ),
//           Flexible(
//             flex: 1,
//             child: Container(color: Colors.green),
//           ),
//           Flexible(
//             flex: 1,
//             child: Container(color: Colors.black),
//           ),
//         ],
//       ),
//     );
//   }
// }
