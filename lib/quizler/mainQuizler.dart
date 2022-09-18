import 'package:flutter/material.dart';
import 'question.dart';
import 'quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizbrain = new QuizBrain();

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  static String id='quizler';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  void checkAnswer(bool getCheckAnswer) {
    setState(
      () {
        if (quizbrain.isFinished() == true) {
          //TODO Step 4 Part A - show an alert using rFlutter_alert,

          //This is the code for the basic alert from the docs for rFlutter Alert:
          Alert(
                  context: context,
                  title: "RFLUTTER",
                  desc: "Flutter is awesome.")
              .show();

          quizbrain.reset();
          scoreKeeper.isEmpty;

          //Modified for our purposes:

          //TODO Step 4 Part C - reset the questionNumber,

          //TODO Step 4 Part D - empty out the scoreKeeper.
        } else {
          //TODO: Step 6 - If we've not reached the end, ELSE do the answer checking steps below 👇

          bool getanswer = quizbrain.getCorrectAnswer();
          if (getanswer == getCheckAnswer) {
            scoreKeeper.add(
              Icon(Icons.check, color: Colors.green),
            );
          } else {
            scoreKeeper.add(
              Icon(Icons.close, color: Colors.red),
            );
          }

          quizbrain.nextQuestion();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizbrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                checkAnswer(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                checkAnswer(false);
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
