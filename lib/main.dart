import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/counters/counter_functions_screen.dart';
import 'package:flutter_application_1/presentation/screens/counters/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // quita la etiqueta "Debug" que aparece en la esquina superior derecha
      theme: ThemeData(
        useMaterial3: true, // los widgets lucen como en Material 3
        colorSchemeSeed: Colors.blue
       ),
       home: const CounterFunctionsScreen()
      //  home: const CounterScreen()
    );
  }
}
