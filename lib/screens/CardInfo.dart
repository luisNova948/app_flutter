import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget{
  const CardInfo({super.key});

  @override
  Widget build(BuildContext context){

    return Scaffold(
        appBar: AppBar(
            title: Text('Widgets review',style: TextStyle(color: Colors.white)
            )),
        body: ListView(
            children: [
              SizedBox(height: 10),
              ListTile(leading: Icon(Icons.person),title:Text('CardInfo'),subtitle:Text('Subtitulo de CardInfo')),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: null, child: Text('Aceptar')),
                    TextButton(onPressed: null, child: Text('Cancelar')),
                  ],
                ),
              )
            ],
        )
    );
  }
}

