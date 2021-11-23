
class Fregues implements Comparable<Fregues>{
  String nome;
  String telefone;
  Fregues({
    required this.nome,
    required this.telefone,
  });


  @override
  String toString() => 'Fregues(nome: $nome, telefone: $telefone)';

  @override
  int compareTo(Fregues other) { //eu desenvolvi a forma de ordenacao
    print('Chamando ${other} ');
    return nome.toLowerCase().compareTo(other.nome.toLowerCase());
  }

  
}
