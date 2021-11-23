// analiza a saída
void main() async {
  print('inicio');
  
  final interval = Duration(seconds: 2);
  
  var stream = Stream<int>.periodic(interval,callback);
  // cortar a stream com número exato
  //! ele verifica na porta de saída
  stream = stream.takeWhile((int numero) { 
    print('O numero que chegou no takeWhile $numero');
    return numero <= 10;
  });

  await for (var i in stream) {
    print(i);
  }
  print('fim');
}

int callback(int value){
  print('O valor é $value');
  return (value +1) *2;
}