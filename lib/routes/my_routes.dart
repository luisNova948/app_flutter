import 'package:basesdos/models/menu_home.dart';
import 'package:flutter/material.dart';

import '../screens/CardInfo.dart';
import '../screens/alert.dart';
import '../screens/list_view_dos.dart';
import '../screens/list_view_uno.dart';
import '../widgets/my_home_page.dart';

class MyRoutes{
  static final initialRoute = "home";

  static final List<MenuHome> menuOptions = [
    MenuHome(icon: Icons.home, nameOption: 'home', route: 'home', screen: MyHomePage()),
    MenuHome(icon: Icons.fastfood, nameOption: "menu de comida", route: 'ListView uno', screen: ListViewUno()),
    MenuHome(icon: Icons.accessible_forward_sharp, nameOption: 'listview dos', route: 'ListView dos', screen: ListViewDos()),
    MenuHome(icon: Icons.bus_alert, nameOption: 'alerta', route: 'alert', screen: Alert()),
    MenuHome(icon: Icons.info, nameOption: 'informacion', route: 'card info', screen: CardInfo())
  ];

  static Map<String,Widget Function(BuildContext)> routes = {
    'home':( BuildContext context)=> MyHomePage(),
    'ListView uno': (BuildContext context)=>ListViewUno(),
    'ListView dos': (BuildContext context)=>ListViewDos(),
    'alert':(BuildContext context)=>Alert(),
    'card info':(BuildContext context)=> CardInfo(),
  };

  //forma dinamica
  static Map<String,Widget Function(BuildContext)> myRoutes(){
    Map<String, Widget Function(BuildContext)> t = {};

    for(var element in menuOptions){
      t.addAll({element.route:(BuildContext context)=>element.screen});
    }

    return t;
  }
}