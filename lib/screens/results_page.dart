import 'package:bmi_calculator_app/components/bottom_button.dart';
import 'package:bmi_calculator_app/constants.dart';
import 'package:bmi_calculator_app/components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage ({required this.bmiResult , required this.interpretation, required this.resultText});
  late String bmiResult ;
  final String resultText ;
  final String interpretation ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0XFF0A0C22),
        title: Text(
          "BMI CALCULATOR",
          textAlign: TextAlign.center,
        ),

      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(top: 30, left: 30),
                child: Text(
                  'Your Result',
                  style: kLargeTextButtonStyle,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Reusable_card(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: kBMIresultStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMInumericStyle,
                    ),
                    Text(
                      interpretation,
                      style: kBMInotesStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ), onPress: null,
              ),
            ),
            BottomButton(
                buttonTitle: 'RE-CALCULATE',
                onTap: () {
                  Navigator.pop(context);
                })
          ]),
    );
  }
}
