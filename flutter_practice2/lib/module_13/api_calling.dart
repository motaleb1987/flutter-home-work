import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class ApiCalling extends StatefulWidget {
  const ApiCalling({super.key});

  @override
  State<ApiCalling> createState() => _ApiCallingState();
}

class _ApiCallingState extends State<ApiCalling> {
  List products =[];
  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchProducts();
  }
  
  Future<void> fetchProducts() async {
    final url = Uri.parse('http://35.73.30.144:2008/api/v1/ReadProduct');
    final response = await http.get(url);
    print(response.statusCode);
    print(response.body);

    if(response.statusCode == 200){
      final jsonResponse = jsonDecode(response.body);
      setState(() {
        products = jsonResponse['data'];
        isLoading = false;
      });
    }else{
      setState(() {
        isLoading = false;
      });
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Calling',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),

      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            crossAxisSpacing: 10,
            childAspectRatio: 1,
          ),
          itemCount: products.length,

          itemBuilder: (context, index){
            final item = products[index];
              return Card(
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 140,
                          child: Image.network('https://www.mustgo.com/wp-content/uploads/2018/04/par_320a.jpg')),
                      Text('Model Title details',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      Text('Price : \$599 || Qty: 200'),
                  
                  
                    ],
                  ),
                ),
              );
          }
      ),
    );
  }
}
