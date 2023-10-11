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
    return  Scaffold(
      body: const Center(
        child:  Column(
          //Centra el componente
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text('10', style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
            Text('Clicks', style: TextStyle(fontSize: 25))
          ],
        )
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: const Icon(Icons.plus_one),
        ),
    );
  }
}
