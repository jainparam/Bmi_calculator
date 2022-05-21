import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {

  final dynamic onTap;
  final String buttonTitle;

  BottomButton ({required this.onTap , required this.buttonTitle});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Container(

          child: Text( buttonTitle,
            style: kLargeTextButtonStyle,
          ),
        ),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top : 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        alignment: Alignment.center,
      ),
    );
  }
}
