import 'package:flutter/material.dart';
class CityCard extends StatelessWidget {
  final String img, title, rating;
  const CityCard({
    super.key, required this.img, required this.title, required this.rating
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: NetworkImage(
                  img
                 // 'https://upload.wikimedia.org/wikipedia/commons/9/92/Tea_garden_in_Sylhet_%2840349163252%29.jpg',
                ),
              ),
            ),
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black45],
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 50,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white
                    ),
                    onPressed: (){}, child: Text(rating,
                  style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold
                  ),
                )),
                SizedBox(),
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite, color: Colors.red,))
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 50,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(title,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}