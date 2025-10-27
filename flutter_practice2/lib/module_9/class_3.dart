import 'package:flutter/material.dart';
import 'package:flutter_practice/module_9/widget/city_card.dart';

import 'class_2_stack.dart';
class OwnWidget extends StatelessWidget {
  const OwnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CityCard(img: 'https://i0.wp.com/handluggageonly.co.uk/wp-content/uploads/2016/09/IMG_1343.jpg?w=1600&ssl=1', title: 'England', rating: '4.8',),
                  CityCard(img: 'https://www.itsholidaysltd.com/_next/image?url=%2Fimages%2Fblog%2F14-most-beautiful-places-in-bangladesh-to-visit-in-this-summer.jpg&w=640&q=100', title: 'Bangladesh', rating: '5.0',),
                  CityCard(img: 'https://static2.tripoto.com/media/filter/nl/img/15546/TripDocument/1455374356_kerala_backwaters.jpg', title: 'India', rating: '4.0',),
                  CityCard(img: 'https://i0.wp.com/handluggageonly.co.uk/wp-content/uploads/2016/09/IMG_1343.jpg?w=1600&ssl=1', title: 'England', rating: '4.8',),
                  CityCard(img: 'https://www.itsholidaysltd.com/_next/image?url=%2Fimages%2Fblog%2F14-most-beautiful-places-in-bangladesh-to-visit-in-this-summer.jpg&w=640&q=100', title: 'Bangladesh', rating: '5.0',),
                  CityCard(img: 'https://static2.tripoto.com/media/filter/nl/img/15546/TripDocument/1455374356_kerala_backwaters.jpg', title: 'India', rating: '4.0',),
              
                ],
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, PageRouteBuilder(pageBuilder: (context,animation,secondaryAnimation)=>
                  Class2Stack(),
              // transitionDuration: (context, animation, secondaryAnimation, child){
              //   const begin =Offset(1, 0);
              //   const end =Offset.zero;
              //   const curve=Curves.ease;
              //   var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve)),
              //   return
              // }

              ));
            }, child: Text('Previous Class'))
          ],
        ),
      ),
    );
  }
}
