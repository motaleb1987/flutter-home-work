import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/home.dart';
import 'package:flutter_practice/module_7/class_2_button.dart';
import 'package:flutter_practice/module_8/class_1_input.dart';
import 'package:flutter_practice/module_9/class_2_stack.dart';
import 'package:flutter_practice/module_9/class_3.dart';
import 'package:flutter_practice/module_9/listView.dart';
import 'package:flutter_practice/module_9/theme_test.dart';
import 'package:flutter_practice/theme/app_theme.dart';

import 'module_8/dashboard.dart';


class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        // theme: ThemeData(
        //   brightness: Brightness.light,
        //   primaryColor: Colors.deepPurple,
        //   primarySwatch: Colors.deepPurple,
        //   //scaffoldBackgroundColor: Colors.grey.shade300,
        //   elevatedButtonTheme: ElevatedButtonThemeData(
        //     style: ElevatedButton.styleFrom(
        //       backgroundColor: Colors.orange,
        //       foregroundColor: Colors.blue,
        //       shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(10)
        //       )
        //     )
        //   ),
        //   inputDecorationTheme: InputDecorationTheme(
        //     border: OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(10),
        //     ),
        //     enabledBorder: OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(10),
        //       borderSide: BorderSide(color: Colors.grey)
        //     ),
        //     focusedBorder: OutlineInputBorder(
        //         borderRadius: BorderRadius.circular(10),
        //         borderSide: BorderSide(color: Colors.orange)
        //     ),
        //     hintStyle: TextStyle(
        //       color: Colors.grey
        //     ),
        //     labelStyle: TextStyle(
        //       color: Colors.blue,
        //       fontWeight: FontWeight.bold
        //     ),
        //   ),
        //   textTheme: TextTheme(
        //     headlineLarge: TextStyle(
        //       fontSize: 20,
        //       fontWeight: FontWeight.bold
        //     ),
        //
        //     titleLarge: TextStyle(
        //         fontSize: 25,
        //         fontWeight: FontWeight.bold,
        //       color: Colors.white
        //     ),
        //
        //   )
        // ),
        // darkTheme: ThemeData.dark().copyWith(
        //   primaryColor: Colors.purple,
        //   elevatedButtonTheme: ElevatedButtonThemeData(
        //     style: ElevatedButton.styleFrom(
        //         backgroundColor: Colors.purple,
        //         foregroundColor: Colors.white,
        //         shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(10)
        //         )
        //     ),
        //   ),
        // ),
        themeMode: ThemeMode.dark,
        title: "Fullter Practise",
      //color: Colors.white,
      //home: Home(),
     // home: ButtonGrp(),
      //home: FlutterInput(),
      home: ThemeTest(),
      initialRoute: 'widget',
      routes: {
          'login': (context)=>ThemeTest(),
        'home': (context)=>Home(),
        'form':(context)=>FlutterInput(),
        'button': (context)=>ButtonGrp(),
        'dashboard': (context)=>Dashboard(),
        'list': (context)=>Lview(),
        'stack': (context)=>Class2Stack(),
        'widget': (context)=>OwnWidget(),
      },

    );

  }
}