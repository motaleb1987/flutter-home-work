import 'package:flutter/material.dart';

class TourImage extends StatelessWidget {
  const TourImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TourCard3(),
        ],
      ),
    );
  }
}

class TourCard3 extends StatelessWidget {
  const TourCard3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: NetworkImage(
                'https://static.independent.co.uk/2025/04/25/13/42/iStock-1498516775.jpg?quality=75&width=1368&crop=3%3A2%2Csmart&auto=webp',
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 15,
          left: 10,
          child: Row(
            children: [
              Text(
                'Bangladesh',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
