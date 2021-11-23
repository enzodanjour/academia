import 'package:dart_func_cole/3_poo/8_interfaces.dart/carro.dart';
import 'package:dart_func_cole/3_poo/8_interfaces.dart/enzo.dart';
import 'package:dart_func_cole/3_poo/8_interfaces.dart/uno.dart';

void main(){
  var uno = Uno();
  var enzo = Enzo();

  printarDadosDoCarro(uno);
  printarDadosDoCarro(enzo);
}

void printarDadosDoCarro(ICarro carro){
  print('''
    Carro:
      Tipo ${carro.runtimeType}
      velocidade maxima ${carro.velocidadeMaxima()}
      rodas ${carro.rodas}
      portas ${carro.portas}
      motor ${carro.motor}
  ''');
}