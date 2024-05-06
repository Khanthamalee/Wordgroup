import 'package:flutter/material.dart';
import 'package:todolist/controller.dart';
import 'package:todolist/layout/ipadlayout.dart';
import 'package:todolist/layout/pclayout.dart';
import 'package:todolist/layout/phonelayout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    TFJsonToDart();
    super.initState();
  }

  Widget build(BuildContext context) {
    double widthscreen = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: widthscreen > 1110
          ? const PCLayout()
          : widthscreen > 600 && widthscreen <= 1109
              ? const IpadLayout()
              : PhoneLayout(),
    );
  }
}
