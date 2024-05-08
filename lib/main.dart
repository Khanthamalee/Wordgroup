import 'package:flutter/material.dart';
import 'package:todolist/controller.dart';
import 'package:todolist/layout/phoneLayoutH.dart';
import 'package:todolist/layout/phonelayoutV.dart';

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
    double heightscreen = MediaQuery.of(context).size.height;
    print("widthscreen : $widthscreen");
    print("heightscreen : $heightscreen");

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: widthscreen <= 600 ? PhoneLayoutV() : phoneLayoutH());
  }
}
