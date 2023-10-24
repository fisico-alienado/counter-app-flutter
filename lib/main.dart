import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/counters/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner:
            false, // quita la etiqueta "Debug" que aparece en la esquina superior derecha
        home: CounterScreen());
  }
}
