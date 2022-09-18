import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'package:portfolio/BMI%20Calculator/mainBMI.dart';
import 'package:portfolio/Bitcoin_ticker/mainBitcoin.dart';
import 'package:portfolio/Destini/mainDestini.dart';
import 'package:portfolio/Xylophone/xylophone.dart';
import 'package:portfolio/quizler/mainQuizler.dart';

class AppsScreen extends StatelessWidget {
  final Function addTaskCallback;
  AppsScreen(this.addTaskCallback);
  late String newTaskTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40), topLeft: Radius.circular(40)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'MY APPS',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // FlatButtonApp(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, XylophoneApp.id);
                  //   },
                  //   nameApp: 'Xylophone',
                  // ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, XylophoneApp.id);
                    },
                    child: Text(
                      'Xylophone',
                      style: const TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Destini.id);
                    },
                    child: Text(
                      'Destini App',
                      style: const TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Quizzler.id);
                    },
                    child: Text(
                      'Quizzler',
                      style: const TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, BitcoinTicker.id);
                    },
                    child: Text(
                      'Bitcoin ticker',
                      style: const TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, BMICalculator.id);
                    },
                    child: Text(
                      'BMI Calculator',
                      style: const TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FlatButtonApp extends StatelessWidget {
  final Function onPressed;
  final String nameApp;
  FlatButtonApp({required this.onPressed, required this.nameApp});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed(),
      child: Text(
        nameApp,
        style: const TextStyle(
          fontSize: 20.0,
        ),
      ),
    );
  }
}
