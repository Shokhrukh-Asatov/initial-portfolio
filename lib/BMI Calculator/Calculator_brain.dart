import 'dart:math';

import 'mainBMI.dart';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  double _bmi = 0;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Ortiqcha Vazn';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Kam Vazn';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Sizda ortiqcha vazn aniqlandi. Kamroq yeb, ko\'proq shug\'ullanish tavsiya qilinadi!';
    } else if (_bmi > 18.5) {
      return 'Sizda barchasi yaxshi. Hozircha xavotirga hojat yo\'q!';
    } else {
      return 'Siz Judayam ozg\'insiz, ko\'proq yeyish tavsiya qilinadi!';
    }
  }
}
