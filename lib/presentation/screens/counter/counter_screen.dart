import 'package:flutter/material.dart';
/*
SHORTCUTS 
importM: Para que importe toda la libreria de Material 
stless: Para que cree un StatelessWidget
*/

class CounterScreen extends StatefulWidget {
  /*STATE-FULL: Permite mantener un estado interno y un ciclo de vida
   como su inicializacion y destruccion 
   
   Se deben usar la menor cantidad de veces por su peso.

   */
  /*STATE-LESS: Sin estado */

  const CounterScreen({super.key});

  /*Se creo el State automaticamente*/
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center(
          child: Column(
        //Centra el componente
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
                   Text('Click${clickCounter == 1 ?  '': 's'}', style: const TextStyle(fontSize: 25))
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        /* Funcion que renderiza*/
          setState(() {
            clickCounter += 1;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}

/*
El rayito en el debug es el HotReload
 */
