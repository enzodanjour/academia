import 'package:dart_func_cole/3_poo/16_ordenacao_default/fregues.dart';

void main(){
  var f1 = Fregues(nome: 'Laura', telefone: '545454');
  var f2 = Fregues(nome: 'enzo', telefone: '545454');
  var f3 = Fregues(nome: 'vitor', telefone: '545454');
  var f4 = Fregues(nome: 'vitoria', telefone: '545454');

  var lista = [f1,f2,f3,f4];

  print(lista);
  lista.sort();
  // lista.sort((f1,f2) => f1.nome.toLowerCase().compareTo(f2.nome.toLowerCase()));
  print(lista);
}