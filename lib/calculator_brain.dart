import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  final height;
  final weight;
  double _bmi;
  CalculatorBrain({@required this.height, @required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'normal';
    } else {
      return 'UnderWeight';
    }
  }

  String interpretation() {
    if (_bmi >= 25) {
      return 'You Have a higher than normal body weight , try to excercise more !';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight , Good job !';
    } else {
      return 'You have a lower than normal body weight , You can eat more !';
    }
  }
}
