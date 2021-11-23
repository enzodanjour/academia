import 'package:dart_func_cole/3_poo/4_heranca/cachorro.dart';

void main(){
  Cachorro dog = Cachorro(idade: 10);
  dog.tamanho = 'Pequeno';
  dog.idade = 11;

  print(dog.recuperarIdade());
  print(dog.calcularIdadeHumana());
}