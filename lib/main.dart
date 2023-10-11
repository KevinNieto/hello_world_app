import 'package:flutter/material.dart';
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
    return const MaterialApp(
      //Para quitar el banner de debug en la app
      debugShowCheckedModeBanner: false,
      //Scaffold: Viene siendo como el SafeAreaView
      home: CouunterScreen()
    );
  }

}