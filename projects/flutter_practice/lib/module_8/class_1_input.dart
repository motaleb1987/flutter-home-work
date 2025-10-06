import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class FlutterInput extends StatelessWidget {
  const FlutterInput({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController=TextEditingController();
    TextEditingController passwordController=TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Login',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.blue,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Image.network('https://clinmedjournals.org/articles/blogs/img/facebook-login.jpg'),
            Image.asset('assets/img_1.png',
            height: 250,
              width: 250,
            ),

            SizedBox(height: 20,),
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              maxLength: 11,
              cursorColor: Colors.orange,
              decoration: InputDecoration(
                  hintText: 'Enter Your Phone',
                hintStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
                helperText: '0191xxx',
                helperStyle: TextStyle(
                  color: Colors.blue,
                  fontSize: 16
                ),
                labelText: 'Phone Number',
                labelStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold
                ),
                prefixIcon: Icon(Icons.phone),
                suffixIcon: Icon(Icons.check),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey)
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.orange)
                ),
                filled: true,
                fillColor: Colors.grey.shade100,
                contentPadding: EdgeInsets.all(20),
              )
            ),
            SizedBox(height: 20,),
            TextField(
              controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),

                  labelText: 'Password',
                  labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold
                  ),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.orange)
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(20),
                )
            ),
            SizedBox(height: 20,),
            SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    onPressed: (){
                      print(phoneController.text);
                      print(passwordController.text);
                      phoneController.clear();
                      passwordController.clear();
                    }, child: Text('Login',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                )))
          ],
        ),
      ),
    );
  }
}
