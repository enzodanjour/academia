
Future<void> main() async {
    var message = await processo1();//desencapsulado
    print('message $message');//callback helld
    var mensagem2 = await processo1();
    print(mensagem2);
    try {
      var message3 = await processo3();
      print(message3);
    }on Exception catch (err) {
      print('erro na chamada do processo3 $err');
    }
    
}

Future<String> processo1() async {
  print('Inicio p3');
  return Future.delayed(Duration(seconds: 2), () => 'FIm do processo 3');
}
Future<String> processo3() async {
  print('Inicio p3');
  return Future.delayed(Duration(seconds: 2), () => throw Exception());
}