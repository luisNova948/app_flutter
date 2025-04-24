import 'package:flutter/material.dart';

class Carrusel extends StatelessWidget{
 const Carrusel({super.key});

 @override
  Widget build(BuildContext context){
   return Scaffold(
     appBar: AppBar(title: Text("Home screen"),),
     body: Center(
       child: Text('Carrusel'),
     ),
   );
 }


}
