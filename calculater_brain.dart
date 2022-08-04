import 'dart:math';
class calculater{

  calculater({required this.wight ,required this.height});

  final double wight;
  final double height;
  double _bmi=0;

  String getBMI_NUM(){
    _bmi=wight/(pow(height/100,2));
    return _bmi.toStringAsFixed(1);
  }
  String getBMI_String(){
    if(_bmi>25)
      return 'Overweight';
    else if (_bmi>18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  String getTps(){
    if(_bmi>25)
      return 'You have a higher than normal body weight. Try to exrcise more.';
    else if (_bmi>18.5)
      return 'You hava a normal body weight. Good job!';
    else
      return 'You hava a lower than normal body wweight. You can eat a bit more.';
  }
}