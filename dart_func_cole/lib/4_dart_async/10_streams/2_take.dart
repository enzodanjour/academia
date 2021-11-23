//corta com o valor exato
void main() async {
  print('inicio');
  final interval = Duration(seconds: 2);
  
  var stream = Stream.periodic(interval,callback);
  //cortar a stream com número exato
  stream = stream.take(5);
  await for (var i in stream) {
    print("valor é: $i");
  }
  print('fim');
}

int callback(int value){
  return (value +1) *2;
}