import 'package:dart_func_cole/2_dart_funcoes/7_imports/somas/soma.dart' as soma;
import 'package:dart_func_cole/2_dart_funcoes/7_imports/soma_modificada/soma_modificada.dart'as soma_modificada;

void main(){
  var total =soma.somaInteiros(3, 5);
  var totalis = soma_modificada.somadouble(3.14, 5.0);

  print('total de doubles $total');
  print('total de doubles $totalis');

}