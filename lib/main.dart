import 'package:basesdos/routes/my_routes.dart';
import 'package:basesdos/screens/CardInfo.dart';
import 'package:basesdos/screens/alert.dart';
import 'package:basesdos/screens/list_view_dos.dart';
import 'package:basesdos/screens/list_view_uno.dart';
import 'package:basesdos/theme/theme_app.dart';
import 'package:basesdos/widgets/widgets.dart' show MyHomePage;
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: 'home',
      theme: ThemeApp.primaryTheme(),
      routes:MyRoutes.myRoutes()
    );
  }
}


