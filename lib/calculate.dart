import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';
class CalculateBrain{

  final int height;
  final int weight;
  CalculateBrain({required this.height ,required  this.weight});
  late double _BMI ;

  String Calc(){

    late num power = pow(height/100, 2);
    _BMI= weight / power;
    return _BMI.toStringAsFixed(1);
  }
  late String _ans ;
  String CalcResult(){

    if(_BMI < 18.5 ){
      _ans = "UnderWeight";
    }
    else if(_BMI > 18.5 && _BMI <= 24.9 ){
      _ans = "HealthyWeight";
    }
    else if(_BMI >= 25.0 && _BMI <= 29.9 ){
      _ans = "OverWeight";
    }
    else if(_BMI < 30.0 ){
      _ans = "Obesity";
    }
    return _ans.toString();
  }

  late String _ansintre ;
  String CalcIntre(){

    if(_BMI < 18.5 ){
      _ansintre = "You are UnderWeight... Try to eat more healthy food.";
    }
    else if(_BMI > 18.5 && _BMI <= 24.9 ){
      _ansintre = "You are HealthyWeight... Try to maintain this Category and eat healthy food.";
    }
    else if(_BMI >= 25.0 && _BMI <= 29.9 ){
      _ansintre = "You are OverWeight... Try to do Excercise and maintain Diet";
    }
    else if(_BMI < 30.0 ){
      _ansintre = "Consult to Doctor....";
    }
    return _ansintre.toString();
  }


}