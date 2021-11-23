void main() {
  print('Inicio do p1');
  //2 status (Incompleto, completo( com valor e com erro))
  processo2();
  // processo3().timeout(Duration(seconds: 1)); determina a duração maxima
  processo3().then((message){//internamente tem de haver try catch 
    try{
      throw Exception();
    }catch(e){
      print(e);
    }
  
  processo3().then((value) => print(value))
    .whenComplete(() => print('Finalizou com sucesso')
  );
    
  }); // promisse of return, recive, anonymous function
  processo4().then((message) => print('Mensagem do p4 $message'),
      onError: (erro) => print('Erro ao executar o processo 4'));
  // .catchError((erro) => print('Erro ao executar o processo 4'));
  print('fim do P1');
}

Future<String> processo4() {
  print('Inicio p4');
  return Future.delayed(Duration(seconds: 2), () => throw Exception());
}

Future<String> processo3() async {
  print('Inicio p3');
  return Future.delayed(Duration(seconds: 2), () => 'FIm do processo 3');
}

Future<void> processo2() async {
  print('Inicio do p2');
  Future.delayed(Duration(seconds: 2), () {
    var i = 0;
    while (i < 3) {
      print(i);
      i++;
    }
    print('FIm DO PROCESSO 2');
  });
}
