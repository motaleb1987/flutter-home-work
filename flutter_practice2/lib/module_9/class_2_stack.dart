import 'package:flutter/material.dart';
import 'package:flutter_practice/module_9/widget/city_card.dart';

class Class2Stack extends StatelessWidget {
  const Class2Stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CityCard(img: 'https://i0.wp.com/handluggageonly.co.uk/wp-content/uploads/2016/09/IMG_1343.jpg?w=1600&ssl=1', title: 'England', rating: '4.8',),
            SizedBox(height: 10),
            Stack(
              children: [
                Container(color: Colors.red, height: 200, width: 200),
                Positioned(
                  bottom: 50,
                  left: 10,
                  right: 10,
                  top: 10,
                  child: Container(
                    color: Colors.green,
                    height: 150,
                    width: 180,
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 20,
                  bottom: 20,

                  child: Container(
                    color: Colors.purple,
                    height: 100,
                    width: 150,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Stack(
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                    'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
                  ),
                ),
                Positioned(
                  bottom: 15,
                  right: 5,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


