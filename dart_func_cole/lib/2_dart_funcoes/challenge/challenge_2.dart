void main() {
  
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  IMetodosFiltragem metodos = MetodosFiltragem();
  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  var pessoasFiltradas = metodos.removerRepetidos(pessoas);
  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  metodos.printPessoasPorSexo(metodos.pessoasPorSexo(pessoasFiltradas));
  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome 
  var filtroIdade = metodos.filtrarPorIdade(pessoasFiltradas);
  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
  metodos.retornarMaisVelho(filtroIdade);
}

abstract class IMetodosFiltragem {
  List filtrarValores(List<String> lista);
  List<String> removerRepetidos(List<String> listaBruta);
  Map<String,List> pessoasPorSexo(List<String> pessoas);
  void printPessoasPorSexo(Map<String,List> pessoal);
  Map<String,int> filtrarPorIdade(List<String> lista);
  Map<String,int> retornarMaisVelho(Map<String,int> pessoaIdade);
  

} 
class MetodosFiltragem implements IMetodosFiltragem {
  @override
  List<String> removerRepetidos(List<String> listaBruta) => Set<String>.from(listaBruta).toList();
  
  @override
  List<List<String>> filtrarValores(List<String> lista) {
    List<List<String>> value = [];
    for (var pessoa in lista) {
      value.add(pessoa.split('|'));
    }
    return value;
  }

  @override
  Map<String,List> pessoasPorSexo(List<String> pessoas){
    Map<String,List> pessoal= {
      'Masculino':[],
      'Feminino':[]
    };
    var pessoasList = filtrarValores(pessoas);
    try{
      for(var pessoa in pessoasList){
        if(pessoa[2] == 'Masculino' && pessoa[2].isNotEmpty){
          pessoal.update('Masculino', (value) {
            value.add(pessoa[0]);
            return value;
          });
        }else if(pessoa[2] == 'Feminino' && pessoa[2].isNotEmpty){
          pessoal.update('Feminino', (value) {
            value.add(pessoa[0]);
            return value;
          });
        }
      }
    }on RangeError catch(e,s) {
      print(e);
      print(s);
    }
    return pessoal;
  }

  @override
  void printPessoasPorSexo(Map<String,List> pessoal){
    for (var pessoasPorGrupo in pessoal.entries) {
        if(pessoasPorGrupo.value.length >0){
          print('Pessoas do sexo ${pessoasPorGrupo.key} ${pessoasPorGrupo.value.length}: ' + pessoasPorGrupo.value.toString());
        }
      }
  }

  @override
  Map<String, int> filtrarPorIdade(List<String> lista) {
    Map<String,int> idadeMapeada= {};
    var listagem = filtrarValores(lista);
     try{
      for (var pessoa in listagem) {
        var idade = int.tryParse(pessoa[1]);
        if(idade! >= 18){
          idadeMapeada.addAll({pessoa[0]: idade});
        } 
        
      }
    }on TypeError catch(e,s){
      print(e);
      print(s);
    }
    print(idadeMapeada);
    return idadeMapeada;
  }

  @override
  Map<String, int> retornarMaisVelho(Map<String, int> pessoaIdade) {
    Map<String,int> maisVelho = {'velho':0};
    pessoaIdade.forEach((key, valuePessoa) {
      if(valuePessoa > maisVelho.values.first){
        maisVelho.update(key, (value) => valuePessoa,ifAbsent: () {
          maisVelho.remove(maisVelho.keys.first);
          maisVelho.putIfAbsent(key, () => valuePessoa);
          return valuePessoa;
        } );
      }
    });
    print(maisVelho);
    return maisVelho;
  }
}