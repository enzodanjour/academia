void main() async {
  print('inicio');
  final interval = Duration(seconds: 1);
  
  var stream = Stream<int>.periodic(interval,callback);
  //cortar a stream com número exato
  stream = stream.take(10);
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