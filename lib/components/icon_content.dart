import 'package:flutter/material.dart';
import 'package:bmi_calculator_app/constants.dart';
class IconContent extends StatelessWidget {
  IconContent({ required this.label, required this.icon}) ;

  final String label ;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column (
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        Icon(
          icon,
          color: Colors.white,
          size: 80.0,
        ),
        SizedBox(
            height: 15.0
        ),
        Text(label,
          style: kLabelTextStyle ,
        ),
      ],
    );
  }
}