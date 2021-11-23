void main() {

  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
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

  //! Baseado no array acima monte um relatório onde:
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  //! 3 - Apresente a quantidade de pacientes que moram em SP
  higherThanTwenty(pacientes);
  countJobs(pacientes);
  personsFromSP(pacientes);
}


void higherThanTwenty(List<String> peopleData){
  List<String> persons = [];
  for (var person in peopleData) {
    var textSplit = person.split('|');
    
    var idadePaciente = int.parse(textSplit.elementAt(1));
    if(idadePaciente > 20){
      persons.add(textSplit.first);
    }
  }
  print(persons);
}

void countJobs(List<String> peopleData){
  Map<String,int> profissions = {};
  for (var person in peopleData) {
    //declara uma variável para o valor relativo ao emprego
    var job = person.toLowerCase().split('|').elementAt(2);
    // caso já tenha um valor ele adiciona mais um, caso não
    // cria o valor e seta como 1
    profissions.update(job, (value) => value +1,
    ifAbsent: ()=> 1);
    
  }
  print(profissions.toString());
}

void personsFromSP(List<String> people){
  int counter= 0;

  for (var person in people) {
    var state = person.toLowerCase().split('|').elementAt(3);
    if(state == 'sp'){
      counter++;
    }
  }

  print('Quantidade de pessoas de são paulo é: $counter');
}