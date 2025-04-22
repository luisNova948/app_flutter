import 'package:basesdos/routes/my_routes.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context){
    /*List<Map<String,dynamic>> routes = [
      {'title':'Home','url':"home",'icon':Icons.home},
      {'title':'ListView uno','url':"ListView uno",'icon':Icons.accessible_forward_sharp},
      {'title':'ListView dos','url':"ListView dos",'icon':Icons.fastfood},
      {'title':'Card info','url':"card info",'icon':Icons.info},
      {'title':'Alert','url':"alert",'icon':Icons.bus_alert}
    ];*/

    final routes = MyRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
            title: Text(
                'Widgets review',style: TextStyle(color: Colors.white)
            )
        ),
        body: ListView.separated(
          itemBuilder: (BuildContext context,i)=>ListTile(
            leading: Icon(routes[i].icon),
            title:Text(routes[i].nameOption.toString()),
            trailing: Icon(Icons.navigate_next_outlined),
            onTap: ()=>Navigator.pushNamed(context, routes[i].route.toString()),
          ),
          separatorBuilder: (BuildContext context,i)=>Divider(), itemCount: routes.length,
        ),
      floatingActionButton: FloatingActionButton(onPressed: null,child: Icon(Icons.add_circle_outline),),
    );
  }
}

