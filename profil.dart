import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://i.pinimg.com/enabled_hi/564x/48/6c/a0/486ca00640b169300b48e9ceacd8e401.jpg'),
            SizedBox(height: 20),
            Text('John Doe', style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            Text('Travel Enthusiast', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
