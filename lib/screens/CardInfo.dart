import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget{
  const CardInfo({super.key});

  @override
  Widget build(BuildContext context){

    return Scaffold(
        appBar: AppBar(
            title: Text('Widgets review',style: TextStyle(color: Colors.white)
            )),
        body: Center(
          child: Text("CardInfo"),

        )
    );
  }
}

