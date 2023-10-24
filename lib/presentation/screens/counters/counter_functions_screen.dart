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
            CustomButton(icon: Icons.refresh_outlined,),

            FloatingActionButton(
              shape: const StadiumBorder(), // hacer el boton redondo
              onPressed: () {            
                clickCounter = 0;
                setState(() {}); // FUNCION QUE ACTUALIZA LOS WIDGETS, QUE REENDERIZA LOS WIDGETS de nuevo
              },
              child: const Icon(Icons.refresh_outlined),
            ),

            // Para agregar una SEPARACION
            const SizedBox(height: 10),

            FloatingActionButton(
              shape: const StadiumBorder(), // hacer el boton redondo
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

            CustomButton(icon: Icons.plus_one,),

            // Para agregar una SEPARACION
            const SizedBox(height: 10),

                // if (clickCounter == 0) return; // QUE NO HAGA NADA MAS SI EL VALOR ES CERO
                // clickCounter -= 1;
                // setState(() {}); // FUNCION QUE ACTUALIZA LOS WIDGETS, QUE REENDERIZA LOS WIDGETS de nuevo

            CustomButton(icon: Icons.exposure_minus_1_outlined,),
          ],
        ) 
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  

  const CustomButton({
    super.key, 
    required this.icon,
    
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(), // hacer el boton redondo
      onPressed: () {

      },
      child: Icon(icon),
    );
  }
}