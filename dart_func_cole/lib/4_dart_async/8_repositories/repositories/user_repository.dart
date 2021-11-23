
import 'package:dart_func_cole/4_dart_async/8_repositories/models/usuario.dart';
import 'package:http/http.dart' as http;

class UserRepository {
  Future<Usuario?> findUser(int id) async {
    String url = 'http://5f7cba02834b5c0016b058aa.mockapi.io/api/users/$id';
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
    var user = Usuario.fromJson(response.body);
    return user;
    }
  }
}