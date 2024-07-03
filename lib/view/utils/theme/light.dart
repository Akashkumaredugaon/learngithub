import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/view/utils/colors.dart';

var lightThem=ThemeData(

    cardTheme: CardTheme(color: Colors.blueAccent),
    scaffoldBackgroundColor: Colors.black,
    elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle( backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlueAccent.shade100))),
    appBarTheme: AppBarTheme(
      backgroundColor: appPrimaryColor,
      centerTitle: true,
      titleTextStyle: TextStyle(fontWeight: FontWeight.bold,color:appPrimaryColor),
      iconTheme: IconThemeData(color: appSeconderColors)

    ),

    textTheme: TextTheme(bodyMedium:  TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10)),
    iconTheme: IconThemeData(color: Colors.white),


);