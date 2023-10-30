import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Center(
      child: Text('Pantalla de Inicio'),
    ),
    Center(
      child: Text('Pantalla de Capturar Reporte'),
    ),
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.description,
            // Cambia a un icono relacionado a informes o documentación
            size: 48,
          ),
          SizedBox(height: 16),
          Text('Pantalla de Ver Reportes'),
        ],
      ),
    ),
    Center(
      child: Text('Pantalla de Usuario'),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generador de reportes'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Capturar Reporte',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: 'Ver Reportes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Usuario',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.grey[200],
        // Color de fondo de la barra de navegación (gris ligero)
        unselectedItemColor: Colors.black,
        // Color de íconos no seleccionados (negro)
        selectedItemColor: Colors.black,
        // Color de íconos seleccionados (negro)
        selectedLabelStyle: TextStyle(
            color: Colors.white), // Color del texto seleccionado (blanco)
      ),
    );
  }
}
