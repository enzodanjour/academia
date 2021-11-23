// herança múltipla 
// podendo vir de uma classe específica ou de outra
import 'package:dart_func_cole/3_poo/10_mixins/joao.dart';

void main(){
  var joao = Joao();
  print('''
  ${joao.apresenta()},
  ${joao.cantar()},
  ${joao.dancar()}
  ''');
  
}