import 'package:assignment_2/widget.dart';
import 'package:flutter/material.dart';

import 'assignment2.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      title: 'Assignment-2',
      home: OwnWidget(),
    );
  }
}
