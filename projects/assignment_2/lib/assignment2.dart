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
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://onlyflutter.com/wp-content/uploads/2024/03/flutter_banner_onlyflutter.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey
              ),
            ),
            Positioned(
              bottom: 0,
              child: Row(

                children: [
                  ElevatedButton(onPressed: (){}, child: Text('৫ সিট খালি ')),
                  ElevatedButton(onPressed: (){}, child: Text('৭ দিন বাকি  '))
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
