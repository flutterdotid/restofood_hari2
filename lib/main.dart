import 'package:flutter/material.dart';
import 'package:restofood/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "RestoFood",
      home: HomeScreen(),
    );
  }
}