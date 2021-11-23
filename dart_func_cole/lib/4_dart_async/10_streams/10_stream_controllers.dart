import 'dart:async';

Future<void> main() async {
  //definido aqui mais de um ouvinte
  final streamController = StreamController<int>.broadcast();

  final inStream = streamController.sink;
  final outStream = streamController.stream;

  outStream
      .skip(1)
      .where((numero) => numero % 2 == 0)
      .map((numero) => numero)
      .listen((strConvertida) => print(strConvertida));

  var numeros = List.generate(20, (index) => index);

  for (var numero in numeros) {
    print('Enviando numero $numero');
    inStream.add(numero);
    // await Future.delayed(Duration(milliseconds: 500));
  }

  print('fim Stream Controller');
  await streamController.close();


}
