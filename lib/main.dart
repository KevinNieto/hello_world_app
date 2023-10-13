import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counter/counter_functions_screen.dart';
import 'package:hello_world_app/presentation/screens/counter/counter_screen.dart';

void main() {

//Configuraciones iniciales de la app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // La palabra Const dice que eso jamas va a cambiar
    return  MaterialApp(
      //Para quitar el banner de debug en la app
      debugShowCheckedModeBanner: false,
      //Scaffold: Viene siendo como el SafeAreaView
      theme: ThemeData(
        //Material3 es una libreria de diseño.
        useMaterial3: true,
        colorSchemeSeed: Colors.blue//Paleta de colores de Flutter

      ),
      home: const CounterFunctionsScreen()
    );
  }

}