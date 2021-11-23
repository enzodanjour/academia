import 'package:dart_func_cole/3_poo/10_mixins/artista.dart';

abstract class Cantar{
  String cantar(){
    return 'cantar ';
  }
  @override
  String apresenta(){ // sobrescrita de metodos
    return 'do you dont love me';
  }
}