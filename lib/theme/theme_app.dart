import 'package:flutter/material.dart';

class ThemeApp{
  static Color primary = Colors.indigo;
  static Color darkColer = Colors.black;

  static ThemeData primaryTheme(){
    return ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(backgroundColor: new Color.fromRGBO(58, 59, 57, 1.0),),
        floatingActionButtonTheme:FloatingActionButtonThemeData(backgroundColor: Colors.transparent,),
        iconTheme: IconThemeData(color: primary),
      primaryIconTheme: IconThemeData(color: primary),
      textTheme: TextTheme()
    );
  }

}