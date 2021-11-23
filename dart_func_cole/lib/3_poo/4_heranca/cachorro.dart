
import 'package:dart_func_cole/3_poo/4_heranca/animal.dart';
//tem todas as caracteristicas de um animal
class Cachorro extends Animal{

  Cachorro({required int idade}) : super(idade: idade);// o construtor superior pede então estou passando pra ele

  @override//metadado
  int calcularIdadeHumana() {
    if(idade != null ){
      return idade! * 7;
    }else {
      return 0;
    }
  }
  
}