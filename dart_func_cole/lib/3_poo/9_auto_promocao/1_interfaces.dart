

import 'package:dart_func_cole/3_poo/9_auto_promocao/carro.dart';
import 'package:dart_func_cole/3_poo/9_auto_promocao/enzo.dart';
import 'package:dart_func_cole/3_poo/9_auto_promocao/uno.dart';
ICarro enzorium = Enzo();

void main(){
  String? nome;
  //auto promocao
  if(nome !=null){
    nome.toLowerCase();
  }

  var uno = Uno();
  var enzo = Enzo();

  //como foi checado o tipo
  //como ela é, o dart promove para a classe do tipo
  if(enzo is Enzo){
    print('ligar nitro:' + enzo.ligarNitro());
  }
  //Variáveis de nível superior não são promovidas automaticamente
  // mesmo checadas
  if(enzorium is Enzo){
    //enzorium.ligarNitro();
  }
  //potencialmente fatal pois não verifica o tipo
  // var ligado = (enzo as Enzo).ligarNitro();

  // print('Ligar nitro: $ligado');

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
      Nitro: ${carro is Enzo ? carro.ligarNitro() :'não disponível'}
  ''');
}