// import 'dart:math';

import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi = 0;

  CalculatorBrain({this.height = 180, this.weight = 60});

  String calculateBMI() {
    _bmi = weight /pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'you have higher body weight than normal. Try to exercise more!!';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Great job!!';
    } else {
      return 'You are thin. Eat more!!';
    }
  }
}
