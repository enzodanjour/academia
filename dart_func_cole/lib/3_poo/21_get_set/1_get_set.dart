//facilita a aplicação de regras de negócio
void main() {
  var pessoa = Pessoa();
  print(pessoa.nome);
  pessoa.nome = 'Enzo Lopes';
}

class Pessoa{
  String? _nome;
  String? get nome => _nome;
  set nome(String? nome) => _nome = nome;

}