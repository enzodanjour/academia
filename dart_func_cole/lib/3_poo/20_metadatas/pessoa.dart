import 'dart:io';

import 'package:dart_func_cole/3_poo/20_metadatas/todo.dart';
//dart não tem geração de código em tempo de execução
@Todo(quem: 'Enzo', oque: 'Lendo a classe')
// @deprecated
@gzip
class Pessoa {
  @Todo(quem: 'Enzo no atributo',oque: 'lendo o atributo')
  String? nome;
}