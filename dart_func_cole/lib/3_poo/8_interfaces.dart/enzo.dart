import 'package:dart_func_cole/3_poo/8_interfaces.dart/carro.dart';

class Enzo implements ICarro {
  @override
  String motor = '8.0';

  @override
  int portas = 2;

  @override
  int rodas = 400;

  @override
  int velocidadeMaxima() {
    return 290;
  }

  String tipoDeRodas(){
    return 'Liga leve';
  }

}