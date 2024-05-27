import 'dart:math';
class Brain{

final int height;
final int weight;

late num _bmi;


Brain(this.height, this.weight);

String getCal(){
  _bmi = weight /  pow(height/100, 2);
  return _bmi.toStringAsFixed(1);
}

String getResult(){
  if(_bmi >= 25){
    return 'OverWeight';
  }else if(_bmi > 18){
    return 'Normal';

  }else{
    return 'UnderWeight';
  }
}

String getInter(){
  if(_bmi >= 25){
    return 'You have a Higher than Normal body weight. Try to exercise more!';
  }else if(_bmi > 18){
    return 'You have a Normal body weight. Good Job!';

  }else{
    return 'You have a lower than normal body weight. You can eat a bit more!';
  }
}

}

