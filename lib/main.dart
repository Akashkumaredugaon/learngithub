import 'package:flutter/material.dart';




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
      home:Ppp(),

    );
  }
}

class Ppp extends StatefulWidget {
  const Ppp({super.key});

  @override
  State<Ppp> createState() => _PppState();
}

class _PppState extends State<Ppp> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

