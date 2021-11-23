
import 'package:dart_func_cole/3_poo/9_auto_promocao/carro.dart';

class Uno implements ICarro {
  @override
  String motor= '1.0';

  @override
  int portas = 2;

  @override
  int rodas = 4;

  @override
  int velocidadeMaxima() {
    return 150;
  }

}