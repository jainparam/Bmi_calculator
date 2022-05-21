import 'package:flutter/material.dart';
import 'screens/input_page.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData (
        primaryColor: Colors.deepPurpleAccent,
        scaffoldBackgroundColor: Color(0XFF0A0C22),
        accentColor: Colors.deepPurpleAccent ,
      ),

      home: InputPage(),
    );
  }
}