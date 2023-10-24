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
            CustomButton(
              icon: Icons.refresh_outlined,
              onPressed: () {            
                clickCounter = 0;
                setState(() {}); // FUNCION QUE ACTUALIZA LOS WIDGETS, QUE REENDERIZA LOS WIDGETS de nuevo
              },
            ),

            // Para agregar una SEPARACION
            const SizedBox(height: 10),

            CustomButton(
              icon: Icons.plus_one,
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
            ),

            // Para agregar una SEPARACION
            const SizedBox(height: 10),

            CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                if (clickCounter == 0) return; // QUE NO HAGA NADA MAS SI EL VALOR ES CERO
                clickCounter -= 1;
                setState(() {}); // FUNCION QUE ACTUALIZA LOS WIDGETS, QUE REENDERIZA LOS WIDGETS de nuevo                
              },
            ),
          ],
        ) 
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed; // VoidCallback es una funcion que NO DEVUELVE NADA. Con '?' decimos que es un argumento OPCIONAL

  const CustomButton({
    super.key, 
    required this.icon, 
    this.onPressed,    
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // shape: const StadiumBorder(), // hacer el boton redondo
      onPressed: onPressed, // el USUARIO MANDA LA FUNCION QUE SE TIENE QUE EJECUTAR COMO PARAMETRO
      child: Icon(icon),
    );
  }
}