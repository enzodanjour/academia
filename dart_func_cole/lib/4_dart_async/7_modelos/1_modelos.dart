import 'package:dart_func_cole/4_dart_async/8_repositories/models/cidade.dart';
import 'package:dart_func_cole/4_dart_async/7_modelos/usuario.dart';
import 'package:http/http.dart' as http;

Future<void> main()async{
  await buscarCep();
  await buscarUser();
}
Future<void> buscarUser() async {
  const String url = 'http://5f7cba02834b5c0016b058aa.mockapi.io/api/users/1';
  var response = await http.get(Uri.parse(url));

  print(response.body);

  if (response.statusCode == 200) {
   var user = Usuario.fromJson(response.body);
   print(user);
   print(user.toMap());
   print(user.toJson());
  }
}

Future<void> buscarCep() async {
  const String url = 'http://www.viacep.com.br/ws/59158150/json';
  var response = await http.get(Uri.parse(url));

  print(response.body);

  if (response.statusCode == 200) {
   var cidade = Cidade.fromJson(response.body);
   print(cidade.localidade);
   print(cidade.toMap());
   print(cidade.toJson());
  }
}