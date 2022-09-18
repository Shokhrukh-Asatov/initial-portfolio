import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'Bottom_Button.dart';
import 'Calculator_brain.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.resultDescription});

  final String bmiResult;
  final String resultText;
  final String resultDescription;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                top: 15.0,
                bottom: 15.0,
              ),
              padding: EdgeInsets.all(15),
              child: Text(
                'Sizning Natijangiz ',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
                margin: EdgeInsets.all(15),
                color: kActiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(resultText, style: kResultTextStyle),
                    Text(bmiResult, style: kResultNumber),
                    Text(resultDescription,
                        textAlign: TextAlign.center, style: kResultDescription),
                    Text(
                      'Yaratuvchi: Shohruh Asatov',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    )
                  ],
                )),
          ),
          Bottombutton(
              onTap: () {
                Navigator.pop(context);
              },
              bottomTitle: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
