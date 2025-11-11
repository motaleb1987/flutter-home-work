import 'package:flutter/material.dart';
class SubjectCard extends StatelessWidget {
  const SubjectCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 400,
        width: 200,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 8,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              // Part 1 - Image
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://onlyflutter.com/wp-content/uploads/2024/03/flutter_banner_onlyflutter.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Divider(thickness: 1, color: Colors.grey[300]),

              // Part 2 - Two buttons side by side
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(3)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: (){},
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.deepPurple,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                          child: Text('সিট-৫',
                            style: TextStyle(
                              //color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          )
                      ),
                      TextButton(
                          onPressed: (){},
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.deepPurple,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                          child: Text('দিন-২',
                            style: TextStyle(
                              //color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          )
                      ),
                    ],
                  ),
                ),
              ),

              Divider(thickness: 2, color: Colors.grey[400]),

              // Part 3 - Description
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.indigo[300],
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
                ),
                padding: const EdgeInsets.all(12.0),
                child: Text('Mobile app development with Flutter',

                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}