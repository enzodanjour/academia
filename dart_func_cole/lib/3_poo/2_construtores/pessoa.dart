// construtores por padrão
class Pessoa {
  String? nome;
  int? idade;
  String? sexo;

  //construtor default
  //Pessoa();
  Pessoa({
    required String nomeConstruct,
    required this.idade,
    required String sexoConstruct,
  }){
    this.nome = nomeConstruct; // mesma coisa
    sexo = sexoConstruct;
  }
  //construtor nomeado
  Pessoa.semNome({
    required this.idade,
    required this.sexo,
  });
  //construtor nomeado
  Pessoa.vazia();

  //construtor factory, existe alguma regra de negócio na criação da classe
  factory Pessoa.factory(String nomeConstr){
    var nome = nomeConstr + '_factory';
    var pessoa = Pessoa.vazia();
    pessoa.nome = nome;
    return pessoa;
  }
}