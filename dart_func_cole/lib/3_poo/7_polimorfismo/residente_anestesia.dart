
import 'package:dart_func_cole/3_poo/7_polimorfismo/anestesista.dart';


class ResidenteAnestesia extends Anestesista{
  // Sobrescrita de métodos
  @override
  void operar() {
    super.operar();// chama o pai
    print('limpar equipamentos');
  }
}