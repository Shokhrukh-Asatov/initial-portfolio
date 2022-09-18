import 'package:flutter/material.dart';
import 'package:portfolio/BMI%20Calculator/mainBMI.dart';
import 'package:portfolio/Bitcoin_ticker/mainBitcoin.dart';
import 'package:portfolio/Destini/mainDestini.dart';
import 'package:portfolio/Xylophone/xylophone.dart';
import 'package:portfolio/mySelf.dart';
import 'package:portfolio/quizler/mainQuizler.dart';
import 'welcome_screen.dart';

void main() {
  runApp(Portfolio());
}

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        MySelf.id: (context) => MySelf(),
        XylophoneApp.id: (context) => XylophoneApp(),
        Destini.id: (context) => Destini(),
        BitcoinTicker.id: (context) => BitcoinTicker(),
        Quizzler.id: (context) => Quizzler(),
        BMICalculator.id: (context) => BMICalculator(),
      },
    );
  }
}
