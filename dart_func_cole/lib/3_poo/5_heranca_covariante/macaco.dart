
import 'package:dart_func_cole/3_poo/5_heranca_covariante/banana.dart';
import 'package:dart_func_cole/3_poo/5_heranca_covariante/fruta.dart';
import 'package:dart_func_cole/3_poo/5_heranca_covariante/mamifero.dart';

class Macaco extends Mamifero{
  @override
  void comer(Banana fruta) {
    print(fruta.tipo);
  }
}