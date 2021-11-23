import 'package:dart_func_cole/3_poo/5_heranca_covariante/banana.dart';
import 'package:dart_func_cole/3_poo/5_heranca_covariante/fruta.dart';
import 'package:dart_func_cole/3_poo/5_heranca_covariante/humano.dart';
import 'package:dart_func_cole/3_poo/5_heranca_covariante/macaco.dart';

void main(){

  var humano = Humano();
  humano.comer(Fruta());
  
  var macaco = Macaco();
  macaco.comer(Banana('Nanica'));
}