import 'package:flutter/material.dart';

class PantallaUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página de Usuario'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.account_circle,
              size: 100,
              color: Colors.blue,
            ),
            SizedBox(height: 20),
            Text(
              'Bienvenido, Usuario',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Aquí puedes agregar la lógica para la acción del botón en esta página
              },
              child: Text('Cerrar Sesión'),
            ),
          ],
        ),
      ),
    );
  }
}
