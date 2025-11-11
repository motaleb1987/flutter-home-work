import 'package:flutter/cupertino.dart';
import 'package:flutter_practice/module_11/todo_assignment.dart';
import 'package:flutter_practice/module_11/tour_image.dart';
import 'package:flutter_practice/module_11/tour_pkg_fronted.dart';
import 'package:flutter_practice/module_11/widget/tour_card.dart';
import 'package:flutter_practice/module_13/api_calling.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_ , child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
                theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,

              themeMode: ThemeMode.dark,
              title: "Fullter Practise",
            //color: Colors.white,
            //home: Home(),
           // home: ButtonGrp(),
            //home: FlutterInput(),
            home: ThemeTest(),
            initialRoute: 'api_called',
            routes: {
                'login': (context)=>ThemeTest(),
              'home': (context)=>Home(),
              'form':(context)=>FlutterInput(),
              'button': (context)=>ButtonGrp(),
              'dashboard': (context)=>Dashboard(),
              'list': (context)=>Lview(),
              'stack': (context)=>Class2Stack(),
              'widget': (context)=>OwnWidget(),
              'todo_list': (context)=>MyTodolist(),
              'tour_app': (context)=>TourPkg(),
              'tour_image': (context)=>TourImage(),
              'api_called': (context)=>ApiCalling(),
              //'tour_card': (context)=>TourCard(img: 'https://www.travelandleisure.com/thmb/hFkv-_TfO2wBULCkkSOAZuErMM8=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/TAL-conrad-maldives-rangali-island-MALDIVESHOTELS1024-6dfdeac00fec4f69893e7576b5896da9.jpg', title: 'Bangladesh'),
            },

          );
        });


  }
}