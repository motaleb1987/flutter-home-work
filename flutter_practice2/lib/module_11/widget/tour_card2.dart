import 'package:flutter/material.dart';
class TourCard2 extends StatelessWidget {
  const TourCard2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              clipBehavior: Clip.antiAlias, // এইটা দিলে radius কাজ করবে
              child: Image.network(
                'https://static.independent.co.uk/2025/04/25/13/42/iStock-1498516775.jpg?quality=75&width=1368&crop=3%3A2%2Csmart&auto=webp',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 15,
              left: 10,
              child: Row(
                children: [
                  Text('Bangladesh',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}