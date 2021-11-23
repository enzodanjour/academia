import 'package:http/http.dart' as http;
import 'package:dart_func_cole/4_dart_async/8_repositories/models/cidade.dart';
//solid apenas buscar o local
class CidadeRepository {
  Future<Cidade> buscarCidade() async {
    const String url = 'http://www.viacep.com.br/ws/59158150/json';
    var response = await http.get(Uri.parse(url));


    if (response.statusCode == 200) {
      var cidade = Cidade.fromJson(response.body);
      return cidade;
    } else {
      throw Exception();
    }
    
  }
}