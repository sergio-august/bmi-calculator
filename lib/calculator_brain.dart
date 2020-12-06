import "dart:math";
import 'package:flutter/material.dart';

class CalculatorBrain {
  CalculatorBrain({@required this.height, @required this.weight}) {
    this._bmi = weight / pow(height / 100, 2);
  }

  final int height;
  final int weight;
  double _bmi;

  String getBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) return "Overweight";
    if (_bmi > 18.5) return "Normal";
    return "Underweight";
  }

  Color getResultColor() {
    if (_bmi >= 29) return Colors.red;
    if (_bmi >= 25) return Colors.orange;
    if (_bmi > 18.5) return Colors.green;
    if (_bmi > 15) return Colors.orange;
    return Colors.red;
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "You have a higher than normal body weight. Try to exercise more.";
    }

    if (_bmi > 18.5) {
      return "You have a normal body weight. Good job!";
    }

    return "You have a lower than normal body weight. You can eat a bit more.";
  }
}
