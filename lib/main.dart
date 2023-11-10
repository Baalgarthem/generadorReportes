import 'package:flutter/material.dart';
import 'package:ssa_app/paginas/pantalla_capturarReporte.dart';
import 'package:ssa_app/paginas/pantalla_reportes.dart';
import 'paginas/pantalla_usuario.dart';
import 'paginas/pantalla_inicio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    PantallaInicio(),
    PantallaCapturarReporte(),
    PantallaVerReportes(),
    PantallaUsuario(),
  ];

  static Widget _buildPage(String text, {IconData? icon}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null)
            Icon(
              icon,
              size: 48,
              color: Colors.black,
            ),
          SizedBox(height: 16),
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'SSA MÉXICO GENERADOR DE REPORTES',
          style: TextStyle(
            color: Colors.black, // Color del título
            fontSize: 24, // Tamaño del título
            fontWeight: FontWeight.bold, // Negrita
          ),
          textAlign: TextAlign.center, // Centrar el título
        ),
        centerTitle: true, // Centrar el título en la AppBar
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          _buildBottomNavItem(Icons.home, 'Inicio'),
          _buildBottomNavItem(Icons.add, 'Capturar Reporte'),
          _buildBottomNavItem(Icons.app_registration_rounded, 'Ver Reportes'),
          _buildBottomNavItem(Icons.account_circle, 'Usuario'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.grey[200],
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(color: Colors.white),
      ),
    );
  }

  static BottomNavigationBarItem _buildBottomNavItem(
      IconData icon, String label) {
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        color: Colors.black,
      ),
      label: label,
    );
  }
}