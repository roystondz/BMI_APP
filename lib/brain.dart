import 'package:flutter/cupertino.dart';
import 'dart:math';

class Brain{
  Brain({@required this.weight,@required this.height});
  int ?weight;
  int ?height;

  double _bmi=0;

  String calculateBMI(){
    double bmi = weight! / pow(height!/100, 2);
    _bmi = bmi;
    String ans = bmi.toStringAsFixed(2);
    return ans;
  }
  String getResult(){

    if(_bmi>=25){
      return 'Overweight';
    }else if(_bmi>=18.5)
      {
        return 'Normal';
      }else{
      return 'Underweight';
    }
  }
  String getInterpretation(){
    if(_bmi>=25){
      return 'Try To Exercise More to gain more weight';
    }else if(_bmi>=18.5)
    {
      return 'You are doing great.Good Job';
    }else{
      return 'Try to eat more';
    }
  }
}