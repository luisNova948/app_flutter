import 'package:flutter/material.dart';

class Card extends StatelessWidget{
  const Card({super.key});

  @override
  Widget build(BuildContext context){

    return Scaffold(
        appBar: AppBar(
            title: Text('Widgets review',style: TextStyle(color: Colors.white)
            )),
        body: Center(
          child: Text("Card"),

        )
    );
  }
}

