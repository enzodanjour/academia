
import 'package:dart_func_cole/3_poo/7_polimorfismo/medico.dart';

class Obstetra extends Medico{
  @override
  void operar() {
    // Preparar parto do bebê
    print('Preparar parto do bebê');
    print('bebê nasce');
  }
  
}