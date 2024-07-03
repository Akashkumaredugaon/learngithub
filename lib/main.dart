import 'package:flutter/material.dart';
import 'package:newsapp/view/screen/category/category_screen.dart';
import 'package:newsapp/view/screen/home/home_screen.dart';
import 'package:newsapp/view/screen/them.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ThemeScreen(),
    );
  }
}


