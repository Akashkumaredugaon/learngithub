import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:newsapp/view/utils/colors.dart';

var darkTheme=ThemeData(

  textTheme: TextTheme(bodyText2:TextStyle(color: Colors.black)),

  elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(  backgroundColor: MaterialStateProperty.all<Color>(appPrimaryColor))),
  appBarTheme: AppBarTheme(
    backgroundColor: appSeconderColors,
     centerTitle: true,
      titleTextStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.redAccent),
  )

);