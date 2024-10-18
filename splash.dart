import 'package:flutter/material.dart';
import 'home.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    // Navigasi setelah delay 3 detik
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => Home()), (route) => false);
    });

    return Scaffold(
      body: Center( // Menggunakan Center untuk menengahkan konten
        child: Image.network(
          'https://i.pinimg.com/enabled_hi/564x/d7/f8/0c/d7f80cae70aaa544fc8a4100fe451254.jpg',
        ),
      ),
    );
  }
}
