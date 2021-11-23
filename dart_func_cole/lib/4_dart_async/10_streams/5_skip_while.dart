void main() async {
  print('inicio');
  final interval = Duration(seconds: 1);
  
  var stream = Stream.periodic(interval,callback);
  //cortar a stream com número exato
  stream = stream.take(5).skipWhile((numero){
    print('stream $numero');
    return  numero < 5;
  });//pulou 0,1 e 2

  await for (var i in stream) {
    print('await for $i');
  }
  print('fim');
}

int callback(int value){
   print('callback $value');
  return (value +1) *2;
}