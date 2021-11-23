import 'package:dart_func_cole/3_poo/3_inicializadores/cliente.dart';
import 'package:dart_func_cole/3_poo/3_inicializadores/produto.dart';

void main(){
  var cliente = Cliente(nome:'Enzo',rg: 'aaaaa');
  print(cliente.rg);//não pode

  cliente.rg ='Irineu';
  print(cliente.rg);
}