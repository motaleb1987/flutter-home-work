import 'package:assignment_2/widget/subject_card.dart';
import 'package:flutter/material.dart';
class OwnWidget extends StatelessWidget {
  const OwnWidget({super.key});

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
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SubjectCard(),
            SubjectCard(),
            SubjectCard(),
            SubjectCard(),
            SubjectCard(),
          ],
        ),
      ),

      // or //

      // GridView.count(
      //     crossAxisCount: 2,
      //     children: List.generate(2, (index)=>Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: SubjectCard(),
      //     ))
      // ),

      ////////////
    );
  }
}
