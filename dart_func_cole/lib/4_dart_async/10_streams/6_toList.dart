void main() async {
  print('inicio');
  final interval = Duration(seconds: 1);
  
  var stream = Stream<int>.periodic(interval,callback);
  //cortar a stream com número exato
  stream = stream.take(5);

  var data = await stream.toList();
  print(data);

  print('fim');
}

int callback(int value){
   print('O calback que chegou no $value');
  return (value +1) *2;
}