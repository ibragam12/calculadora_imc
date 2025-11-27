import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Sobrepeso';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Bajo de peso';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Tienes un peso mas alto de lo normal. Puedes ejercitarte un poco mas.';
    } else if (_bmi > 18.5) {
      return 'Tienes un peso normal. Sigue Así!';
    } else {
      return 'Tienes un peso debajo de lo normal. Puedes comer un poco mas.';
    }
  }
}