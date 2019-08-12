import 'dart:math';

class CalculatorBrain{


  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;

  String calculateBMI(){
     _bmi = weight/pow(height /100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
  if(_bmi>= 25){
    return 'Overweight';
  }else if(_bmi > 18.5){
  return 'Normal';
  }else
    return 'Underweight';
  }

  String getInterpretation(){
    if(_bmi>= 25){
      return 'You have a high BMI .Try to Excercise more and follow a proper diet';
    }else if(_bmi > 18.5){
      return 'Your BMI is normal. Just try to keep youself in shape';
    }else
      return 'You have a below par BMI. Try to eat healthy.';

  }
}