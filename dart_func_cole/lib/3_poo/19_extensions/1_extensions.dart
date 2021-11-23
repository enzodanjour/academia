import 'package:dart_func_cole/3_poo/19_extensions/pessoa.dart';
import 'package:dart_func_cole/3_poo/19_extensions/pessoa_saudacao_extension.dart';
import 'saudacao_string_extensions.dart';
  /**
 *   adicionou um metodo em 
 * uma classe que não tem acesso, muito maneiro xd
 * */
void main(List<String> args) {
  var nome = 'Rodrigo Rahman';
  print(nome.saudacao());

  var p1 = Pessoa(nome: 'ENzo');
  print(p1.saudacao());
}


