import 'package:flutter/material.dart';

class Carrusel extends StatelessWidget{
 const Carrusel({super.key});

 @override
  Widget build(BuildContext context){

    final size = MediaQuery.of(context).size;
    
   return Scaffold(
     appBar: AppBar(title: Text("Home screen"),),
     body: Column(
      children: [
        Container(height: size.height*.3 ,width: double.infinity,color: Colors.red,)
      ],
     )
   );
 }


}
