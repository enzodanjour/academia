

Future<void> main() async {
  print('inicio');
  final interval = Duration(seconds: 2);
  // a cada intervalo de tempo executará 
  // indefinidamente
  //com ele já é realizado o controlador automáticamente
  final stream = Stream.periodic(interval,callback);
  //ele fica parado, e não come processamento 
  // enquanto não roda
  await for (var i in stream) {
    print(i);
  }
  //nunca será executado
  print('fim');
}

int callback(int value){
  return (value +1) *2;
}