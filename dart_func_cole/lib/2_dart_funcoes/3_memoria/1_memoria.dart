void main(){
  var lista = ['Enzo'];
  print(lista.hashCode);
  print(lista);

  funcao(lista);
  print(lista);

  String nome = 'Irineu';
  print(nome.hashCode);
  funcao2(nome);
  print(nome);
  print(lista);
  add(lista);
  print(lista);

}
void funcao2(String nome){
  nome += 'academia do flutter';
  print(nome.hashCode);
}

void funcao(List<String> nomes){
  print(nomes.hashCode);
  //altera o endereço da lista
  nomes.add('Laura');
}

List<String> add(List<String> nomes){
  var novoNomes = [...nomes];
  novoNomes.add('Enzo');
  print(novoNomes);
  return novoNomes;
}