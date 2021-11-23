import 'package:dart_func_cole/3_poo/18_modificadores/serie.dart';
// ele verifica as variáveis como são iguais não instancia
// otimiza memoria
void main(){
  var s1 = const Serie(nome: 'Better call Saul', diretor: 'Vince Gilligan');
  var s2 = const Serie(nome: 'Better call Saul', diretor: 'Vince Gilligan');

  print(s1 == s2);
}