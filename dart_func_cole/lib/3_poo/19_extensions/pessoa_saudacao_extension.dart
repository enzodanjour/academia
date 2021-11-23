
import 'package:dart_func_cole/3_poo/19_extensions/pessoa.dart';

extension PessoaSaudacaoExtension on Pessoa{
  String saudacao(){
    return 'Olá, ${nome}, bem vindo a academia do flutter';
  }
}