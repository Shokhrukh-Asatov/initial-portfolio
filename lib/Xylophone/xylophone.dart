import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophoneApp extends StatelessWidget {
  static String id = 'xylophone';
  void playSound(int numSound) {
    final player = AudioCache();
    player.play('note$numSound.wav');
  }

  Expanded buildKey({required Color color, required int Num}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(Num);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, Num: 1),
              buildKey(color: Colors.green, Num: 2),
              buildKey(color: Colors.blue, Num: 3),
              buildKey(color: Colors.teal, Num: 4),
              buildKey(color: Colors.yellow, Num: 5),
              buildKey(color: Colors.orange, Num: 6),
              buildKey(color: Colors.purple, Num: 7),
            ],
          ),
        ),
      ),
    );
  }
}
