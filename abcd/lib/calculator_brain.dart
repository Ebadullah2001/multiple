import 'dart:math';

import 'package:flutter/cupertino.dart';
class CalculatorBrain{
  // CalculatorBrain({required this.height,required this.weight});
  late double _bmi;
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;



  String calculateBMI(){
    _bmi = weight/pow(height/100,2 );
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi>=25){
      return 'Overweight';
    }else if(_bmi>18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }
  String getInterpretation(){
    if(_bmi>=25){
      return 'You have a higher than normal body weigth.Do exercise.';
    }else if(_bmi>18.5){
      return 'You have a normal body weigth.Good job.';
    }else{
      return 'You have a lower than normal body weigth.You can eat bit more.';
    }
  }
}

// class Questionz {late String questionText;late bool questionAnswer;Questionz({required String t, required bool a}) {
//   questionText = t;
//   questionAnswer = a;}}