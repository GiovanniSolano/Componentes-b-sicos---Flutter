import 'package:components/widgetSettings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  // 1. BottomNav: Indice del selector del bottomNavigation
  int _selectedIndex = 0;
  // 2. BottomNav: Lista de opciones del bottomNavigation
  static List<Widget> _widgetOptions = <Widget>[
    Text('Index 0: inicio'),
    Text('Index 1: favoritos'),
    Text('Index 2: mis listas'),
    WidgetSettings()
  ];

  // 3. BottomNav: Función que indica que guarda el valor del indice seleccionado
  void _selectedOptionInMyBottomNavigation(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyBottomBavigationBar')),
      // 5. BottomNav: Elemento que se muestra actualmente en esta pantalla/widget/pantalla principal
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      //1 Drawer, Implementacion de Drawer, Se define un menú lateral con cabecera y lista de items

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text(
                  'Drawer cabecera',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                )),
            ListTile(
                leading: Icon(Icons.account_circle), title: Text('Perfil')),
            ListTile(leading: Icon(Icons.message), title: Text('Mensajes')),
          ],
        ),
      ),

      //4. BottomNav: Implementación de la navegación en el bottomNavigation
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favoritos'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Mis listas'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Ajustes'),
        ],
        // Indice que actualmente que está seleccionado
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.amber,
        onTap: _selectedOptionInMyBottomNavigation,
      ),
    );
  }
}
