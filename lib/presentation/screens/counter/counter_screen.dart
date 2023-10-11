import 'package:flutter/material.dart';
/*
SHORTCUTS 
importM: Para que importe toda la libreria de Material 
stless: Para que cree un StatelessWidget
*/

class CouunterScreen extends StatelessWidget {
  const CouunterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Counter Screen')),
    );
  }
}
