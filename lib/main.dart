import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner:
            false, // quita la etiqueta "Debug" que aparece en la esquina superior derecha
        home: Scaffold(
          body: Center(child: Text('Hola Mundo')),
        ));
  }
}
