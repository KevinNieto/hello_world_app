import 'package:flutter/material.dart';
/*
SHORTCUTS 
importM: Para que importe toda la libreria de Material 
stless: Para que cree un StatelessWidget
*/

class CounterFunctionsScreen extends StatefulWidget {
  /*STATE-FULL: Permite mantener un estado interno y un ciclo de vida
   como su inicializacion y destruccion 
   
   Se deben usar la menor cantidad de veces por su peso.

   */
  /*STATE-LESS: Sin estado */

  const CounterFunctionsScreen({super.key});

  /*Se creo el State automaticamente*/
  @override
  State<CounterFunctionsScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Counter Functions'), actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          )
        ]),
        body: Center(
            child: Column(
          //Centra el componente
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter',
                style: const TextStyle(
                    fontSize: 160, fontWeight: FontWeight.w100)),
            Text('Click${clickCounter == 1 ? '' : 's'}',
                style: const TextStyle(fontSize: 25))
          ],
        )),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {
                /* Funcion que renderiza*/
                setState(() {
                  clickCounter += 1;
                });
              },
              child: const Icon(Icons.plus_one),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {
                /* Funcion que renderiza*/
                setState(() {
                  if (clickCounter == 0) return;
                  clickCounter--;
                });
              },
              child: const Icon(Icons.exposure_minus_1_outlined),
            ),
      
            const SizedBox(height: 30), 
            CustomButton(
              icon: Icons.refresh_outlined,
              onPressed: () {
                clickCounter = 0;
                setState(() {});
              },
            ),
            const SizedBox(height: 10), 
            CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                if (clickCounter == 0) return;
                clickCounter--;
                setState(() {});
              },
            ),
           const SizedBox(height: 10),   
            
            CustomButton(
              icon: Icons.plus_one,
              onPressed: () {
                clickCounter++;
                setState(() {});
              },
            ),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,//Sonidito
      //shape: const StadiumBorder(),//Border Radius
      elevation: 5,
      backgroundColor: Colors.amber,
      onPressed:onPressed,
      child: Icon(icon),
    );
  }
}

/*
El rayito en el debug es el HotReload
 */
