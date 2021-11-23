void main(){
  //final paciente = <int>{};//set
  final paciente = <String, String>{
    'nome':'Enzo',
    'curso':'Academia do flutter'
  };
  // o mapa pode ser criado mas se for criado deve conter a chave 
  //e o valor não nulos
  Map<String,String>? pacienteNullSafety = null;
  //o map não pode ser nulo mas a chave pode ser nula
  var pacienteNullSafety2 = {
    null:'Enzo'
  };
  //o map não pode ser nulo mas o valor pode ser nulo
  var pacienteNullSafety3 = <String,String?>{
    'nome':null,
  };

  var produtos = <String, String>{};
  produtos.putIfAbsent('nome', () => 'fone');//só adiciona se não tiver
  produtos.putIfAbsent('nome', () => 'refrigerante');
  print(produtos);

  produtos.update('nome2', (value) => 'refrigerante',ifAbsent: () => '10');//se não existir
  print(produtos);

  // recuperando valor
  print('Produto ${produtos['nome']}');

  // não pode existir requisições assíncronas
  produtos.forEach((key, value) { 
    print('chave:$key valor:$value');
  });
  //aqui embaixo pode ser de forma assíncrona
  for (var entry in produtos.entries) {
    print('chave:${entry.key} valor:${entry.value}');
  }

  for (var key in produtos.keys) {
    print(key);
  }

  for (var value in produtos.values) {
    print('Valores: $value');
  }

  var retorno = produtos.map((key, value){
    return MapEntry(key+'_nova', value.toUpperCase());
  });

  print(retorno);

  var mapa = <String, Object>{
    'Nome':'Enzo Danjour',
    'cursos':[
      {
        'nome':'Academia do flutter',
        'descricao':'curso muito bom'
      },
      {
        'nome':'Arquiteto flutter',
        'descricao':'curso excelente'
      }
    ]

  };

  print(mapa['cursos']);
}
