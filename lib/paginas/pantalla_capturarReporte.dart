import 'package:flutter/material.dart';

class PantallaCapturarReporte extends StatefulWidget {
  @override
  _PantallaCapturarReporteState createState() =>
      _PantallaCapturarReporteState();
}

class _PantallaCapturarReporteState extends State<PantallaCapturarReporte> {
  List<TableRow> filas = [
    TableRow(
      children: [
        TableCell(
          child: Center(
            child: Text('Antes'),
          ),
        ),
        TableCell(
          child: Center(
            child: Text('Después'),
          ),
        ),
      ],
    ),
  ];

  void agregarFila() {
    setState(() {
      filas.add(
        TableRow(
          children: [
            TableCell(
              child: GestureDetector(
                onTap: () {
                  // Agregar lógica para seleccionar imagen desde la galería o la cámara
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Icon(Icons.camera_alt),
                      Text('Seleccionar imagen'),
                    ],
                  ),
                ),
              ),
            ),
            TableCell(
              child: GestureDetector(
                onTap: () {
                  // Agregar lógica para seleccionar imagen desde la galería o la cámara
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Icon(Icons.camera),
                      Text('Seleccionar imagen'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla de Capturar Reporte'),
      ),
      body: Center(
        child: Column(
          children: [
            Table(
              columnWidths: {
                0: FlexColumnWidth(1),
                1: FlexColumnWidth(1),
              },
              children: filas,
            ),
            ElevatedButton(
              onPressed: agregarFila,
              child: Text('Añadir'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PantallaCapturarReporte(),
  ));
}
