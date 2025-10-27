import 'package:flutter/material.dart';
class ThemeTest extends StatelessWidget {
  const ThemeTest({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController=TextEditingController();
    TextEditingController passwordController=TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Test',
        style: Theme.of(context).textTheme.titleLarge,
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                Text('Login Form',
                style: Theme.of(context).textTheme.headlineLarge,
                ),
            SizedBox(height: 10,),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(
                hintText: 'User Name',
                labelText: 'Your ID'
              ),

            ),
            SizedBox(height: 10,),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  hintText: 'Password',
                  labelText: 'Password'
              ),

            ),
            ElevatedButton(
              // style: ElevatedButton.styleFrom(
              //   backgroundColor: Colors.blue,
              //   foregroundColor: Colors.white,
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(10)
              //   )
              // ),
                onPressed: (){
                  Navigator.pushNamed(context, 'button');
                }, child: Text('Login')),
            
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, 'dashboard', arguments: {
                'phone': phoneController.text,
                'password': passwordController.text,

              });
            }, child: Text('Dashboard'))
          ],
        ),
      ),
    );
  }
}
