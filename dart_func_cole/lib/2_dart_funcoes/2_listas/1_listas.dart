void main(){
  var numeros = List.generate(10, (index) => index);

  // numeros.forEach(print);

  //expand
  var lista = [
    [1,2],
    [3,4]
  ];

  var listaNova = lista.expand((numeros) => numeros).toList();
  print('expand:$listaNova');

  // any 
  final listaBusca = ['Enzo', 'Laura', 'luna'];
  if(listaBusca.any((element) => element == 'Laura')){
    print('tem o nome');
  }else{
    print('não tem o nome');
  }

  // every
  final listaBusca2 = ['Rodrigo','João','José'];

  if(listaBusca2.every((nome) => nome.contains('o'))){
    print('Todos os nomes contém a letra o');
  }else{
    print('Nem todos os nomes contém a letra o');
  }

  // .sort
  print('.sort');
  var listaParaOrdenacao = [99,22,10,9,0,765,1,2,3,100,300];

  listaParaOrdenacao.sort();
  print(listaParaOrdenacao);

  var listaNomesOrdenacao =  ['Rodrigo','Enzo','andre','aloisio','João','José'];
  listaNomesOrdenacao.sort();
  print(listaNomesOrdenacao);

  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  

  pacientes.sort((paciente1,paciente2){
    var pacienteDados1 = paciente1.split('|');
    var pacienteDados2 = paciente2.split('|');

    final idadePaciente = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    if(idadePaciente > idadePaciente2){
      return 1;
    }else if(idadePaciente == idadePaciente2){
      return 0;
    }else{
      return -1;
    }
  });
  print(pacientes);

  var pacientes2 = [...pacientes];

  pacientes2.sort((paciente1,paciente2){
    var pacienteDados1 = paciente1.split('|');
    var pacienteDados2 = paciente2.split('|');

    final idadePaciente = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);
    
    return idadePaciente.compareTo(idadePaciente2);
  });
  print(pacientes2);
}

void printAcademia(String valor) {
  print(valor);
}

void funcaoQualquer(List<int> pacientes){

}