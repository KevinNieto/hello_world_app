import 'package:flutter/material.dart';

void main() {

//Configuraciones iniciales de la app
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Center(child: Text('Hola Mundo'))
    );
  }

}