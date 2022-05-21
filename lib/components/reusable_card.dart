
import 'package:flutter/material.dart';

class Reusable_card extends StatelessWidget {
  Reusable_card({required this.colour, required this.cardChild, required this.onPress});

  final Color colour ;
  final Widget cardChild ;
  dynamic onPress ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container (
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration (
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}