import 'package:flutter/material.dart';

void main() {

//Configuraciones iniciales de la app
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // La palabra Const dice que eso jamas va a cambiar
    return const MaterialApp(
      //Para quitar el banner de debug en la app
      debugShowCheckedModeBanner: false,
      //Scaffold: Viene siendo como el SafeAreaView
      home: Scaffold(
        body: Center(child: Text('Hola Mundo')),
      )
    );
  }

}