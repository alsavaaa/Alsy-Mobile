import 'package:flutter/material.dart';
import 'home.dart';
import 'profil.dart';
import 'splash.dart';

void main(){
  runApp(TravelApp());
}

class TravelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      home: Splash(),
      routes: {
        '/home': (context) => Home(),
        '/profile': (context) => Profil(),
      },
    );
  }
}
