import 'package:dart_func_cole/3_poo/13_operator_methods/numeros.dart';

void main(){
  1 + 1;//operator method de num
  1 - 1;//operator method de num
  1 == 1;//operator method

  var num = Numero(10);
  var num2 = Numero(20);

  var totalSoma = num + num2;
  print(totalSoma.i);

  var totalSub = num - num2;
  print(totalSub.i);
}