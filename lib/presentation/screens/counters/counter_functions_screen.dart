import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Counter Functions')),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter',
                  style: const TextStyle(
                      fontSize: 160, fontWeight: FontWeight.w100)),
              Text('Click${clickCounter == 1 ? '' : 's'}', style: const TextStyle(fontSize: 25)),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {
                clickCounter += 1;                            
                setState(() {}); // FUNCION QUE ACTUALIZA LOS WIDGETS, QUE REENDERIZA LOS WIDGETS de nuevo
                // Otra forma valida
                /*
                setState(() {
                  clickCounter += 1;
                });
                */
              },
              child: const Icon(Icons.plus_one),
            ),
            // Para agregar una SEPARACION
            const SizedBox(height: 10),
            FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {            
                clickCounter -= 1;
                setState(() {}); // FUNCION QUE ACTUALIZA LOS WIDGETS, QUE REENDERIZA LOS WIDGETS de nuevo
              },
              child: const Icon(Icons.exposure_minus_1_outlined),
            ),            
          ],
        ) 
    );
  }
}