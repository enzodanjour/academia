void main() async {
  print('inicio');
  final interval = Duration(seconds: 1);
  
  var stream = Stream<int>.periodic(interval,callback);
  //gerencia uma condição
  stream =await  stream.where((numero) => numero %6 == 0).take(3);
  //escutou os valores durante a execução
  stream.listen((numero){
    print('Meu número é $numero');
  });
  

  print('fim');
}

int callback(int value){
   print('O calback que chegou no $value');
  return (value +1) *2;
}