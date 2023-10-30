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

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    _buildPage('Pantalla de Inicio'),
    _buildPage('Pantalla de Capturar Reporte'),
    _buildPage('Pantalla de Ver Reportes'),
    _buildPage('Pantalla de Usuario'),
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
        title: Text(
          'Generador de Reportes',
          style: TextStyle(
            color: Colors.black, // Color del título
            fontSize: 24, // Tamaño del título
            fontWeight: FontWeight.bold, // Negrita
          ),
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          _buildBottomNavItem(Icons.home, 'Inicio'),
          _buildBottomNavItem(Icons.add, 'Capturar Reporte'),
          _buildBottomNavItem(Icons.description, 'Ver Reportes'),
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