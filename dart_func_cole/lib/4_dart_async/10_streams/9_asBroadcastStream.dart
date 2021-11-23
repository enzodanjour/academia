//stream por padrão pode ser escutada por apenas um ouvinte
void main() async {
  print('inicio');
  final interval = Duration(seconds: 1);
  
  var stream = Stream<int>.periodic(interval,callback);
  //ele assiste a stream
  stream = stream.asBroadcastStream().take(10);
  
  
  stream.listen((numero){
    print('Listen 1: Meu número é $numero');
  });
  
  stream.listen((numero){
    print('Listen 2: Meu número é $numero');
  });

  print('fim');
}

int callback(int value){
   print('O calback que chegou no $value');
  return (value +1) *2;
}