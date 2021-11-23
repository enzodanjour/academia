import 'package:dart_func_cole/3_poo/2_construtores/pessoa.dart';

void main(){
  var pessoa = Pessoa(nomeConstruct: 'nome', idade: 22, sexoConstruct: 'M');
  print(pessoa.nome);

  var pessoaNomeado = Pessoa.semNome(idade: 20,sexo: 'masculino');

  var pessoaFactory = Pessoa.factory('Enzo');
}