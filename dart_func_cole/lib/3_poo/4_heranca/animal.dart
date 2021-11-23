
abstract class Animal {//fortementa acoplado
  String? tamanho;
  int? idade;

  Animal({required this.idade});

  int recuperarIdade(){
    return idade ?? 0;
  }

  int calcularIdadeHumana();
}