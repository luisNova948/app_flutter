import 'package:flutter/material.dart';

class Alert extends StatelessWidget{
  const Alert({super.key});

  @override
  Widget build(BuildContext context){

    void mostrarAlerta(BuildContext context){
      showDialog(
        context: context,
        barrierDismissible: false, // obliga que el usuario seleccione una opcion
        builder: (BuildContext c){
          return AlertDialog(
            title: Text('¿Como estas?'),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [Text('Esperamos respuesta ...'),FlutterLogo(size: 30),
              Row(
                children: [
                  TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text('Si'),), 
                  TextButton(onPressed: null, child: Text('No')) 
                ],
              )
              ],
            ),

          );
      });
    }

    return Scaffold(
      appBar: AppBar(
          title: Text('Widgets review',style: TextStyle(color: Colors.white)
          )),
      body: Center(
        child: ElevatedButton(onPressed: (){
          mostrarAlerta(context);
        }, child: Text("click aqui")),

      )
    );
  }
}

