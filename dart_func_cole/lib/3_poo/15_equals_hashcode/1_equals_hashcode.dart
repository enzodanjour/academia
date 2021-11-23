
import 'package:dart_func_cole/3_poo/15_equals_hashcode/pessoa.dart';



void main(){
  /**
 * nome = 'enzo' codigo 554221670
 * nome2 = 'Enzo'codigo 393108463
 */
  var p1 = Pessoa(email: 'dracken@gmail.com',nome: 'enzo');
  print(p1.hashCode);
  var p2 = Pessoa(email: 'dracken@gmail.com',nome: 'enzo');
  print(p2.hashCode);
  //p1=p2;//referencias de memória iguais
  print(p1);

  if(p1 == p2){
    print('Nome iguais');
    print(p1.hashCode);
    print(p1.nome);
    print(p2.nome);
    print(p2.hashCode);
  }else if(p1 != p2){
    print('Nomes diferentes');
    print(p1.hashCode);
    print(p2.hashCode);
  }
}