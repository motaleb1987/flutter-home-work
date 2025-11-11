import 'package:assignment_2/widget/subject_card.dart';
import 'package:flutter/material.dart';
class MyAssignment extends StatelessWidget {
  const MyAssignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assignment-2',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SubjectCard(),

          ],

        ),
      )
    );
  }
}


