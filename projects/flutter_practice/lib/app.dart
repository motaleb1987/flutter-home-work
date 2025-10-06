import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/home.dart';
import 'package:flutter_practice/module_7/class_2_button.dart';
import 'package:flutter_practice/module_8/class_1_input.dart';


class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title: "Fullter Practise",
      color: Colors.white,
      //home: Home(),
     // home: ButtonGrp(),
      home: FlutterInput(),

    );

  }
}