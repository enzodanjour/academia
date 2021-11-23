void main() async {
  print('inicio');
  final interval = Duration(seconds: 1);
  
  var stream = Stream.periodic(interval,callback);
  //cortar a stream com número exato
  stream = stream.take(5).skip(2);//pulou 0,1 e 2

  await for (var i in stream) {
    print('O numero que chegou no await fot $i');
  }
  print('fim');
}

int callback(int value){
   print('O calback que chegou no $value');
  return (value +1) *2;
}