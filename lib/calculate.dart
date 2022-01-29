import 'dart:math';
class calculate{
  final int weight;

  calculate({this.weight, this.height});
  double _bmi;
  final int height;
  String caculateBMI(){
    _bmi=height/pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi >=25){
      return 'Overweight';
    }
    else {
      if(_bmi > 18.5 ){
        return 'Normal';
      }
      else if(_bmi==0){
        return 'your weight and height should no be equal to zero';
      }
      else{
        return 'Underweight';
      }

    }
  }
  String getInter(){
    if(_bmi >=25){
      return 'You have a higher than normal body weight.Try to exercize more.';
    }
    else {
      if(_bmi > 18.5 ){
        return 'You have a normal body weight.Good job';
      }
      if(_bmi==0){
        return 'Please select  weight and height';
      }

      else{
        return 'You have a lower than normal body weight.Try to eat more.';
      }

    }}
}