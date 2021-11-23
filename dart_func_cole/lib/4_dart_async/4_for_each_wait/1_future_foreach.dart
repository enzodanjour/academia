
Future<void> main() async{
  var nomes = ['Enzo','Laura','Midas'];

  // await Future.forEach<String>(nomes, (nome) async { 
  //   print(await saudacao(nome));
  // });// se tornou síncrono, mas muito verboso
  
  // ! não pode ter callback
  //for (String nome in nomes) {
  //   print(await saudacao(nome));
  // }

  /* !
   * Execução em paralelo com for
   */
  var nomesFuturo = nomes.map((nomes) => saudacao(nomes)).toList();
  var saudacoes = await Future.wait(nomesFuturo);// espera todos retornarem, espera todos os retornos

  print(saudacoes);
  // nomes.forEach((element) async{ 
  //   print(await saudacao(element));
  // });
} 

Future<String> saudacao(String nome) {
  print('Inicio $nome');
  return Future<String>.delayed(Duration(seconds: 2),() {
    print('Fim $nome'); 
    return 'Olá $nome';
    });
  
}

Future<void> p1() async {
  await saudacao('nome');
}

Future<String> p2() async {
  await saudacao('nome');
  return Future.value('');
}