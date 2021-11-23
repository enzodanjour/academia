import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<void> main() async {
  await buscarCep();
  await buscarPosts();
  await buscarCepErro();
  await salvarPost();
  await updatePost(1);
}

Future<void> updatePost(int idPost) async {
  String url = 'https://jsonplaceholder.typicode.com/posts/$idPost';
  var mapaRequest = {
    'title': 'Post novo',
    'body': 'Descricao do post',
    'userId': 1
  };
  var response = await http.put(
    Uri.parse(url),
    body: convert.jsonEncode(mapaRequest),
    // headers: {
    //   'content-type':'json'
    // },
  );

  print(response.body);
  print(response.statusCode);
}

Future<void> salvarPost() async {
  const String url = 'https://jsonplaceholder.typicode.com/posts/';

  var mapaRequest = {
    'title': 'Post novo',
    'body': 'Descricao do post',
    'userId': 1
  };
  var response =
      await http.post(Uri.parse(url), body: convert.jsonEncode(mapaRequest));
  print(response.body);
  print(response.statusCode);
}

Future<void> buscarPosts() async {
  const String url = 'https://jsonplaceholder.typicode.com/posts/';
  // print(Uri.parse(url) == url);
  var response = await http.get(Uri.parse(url));
//! recebeu uma lista do backend
  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    if (responseData is List) {
      responseData.forEach((element) => print(element['id']));
    }
  }
}

Future<void> buscarCep() async {
  const String url = 'http://www.viacep.com.br/ws/99999999/json';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    if (responseData is Map) {
      print(responseData['cep']);
      print(responseData['logradouro']);
      // print(responseData['localidade']);
    }
  }
}

Future<void> buscarCepErro() async {
  const String url = 'http://www.viacep.com.br/ws/9999999/json';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    if (responseData is Map) {
      if (responseData.containsKey('erro')) {
        print('Algum erro');
      } else {
        print(responseData['cep']);
        print(responseData['logradouro']);
        // print(responseData['']);
      }
    }
  } else {
    print('Erro ai');
    print(response.statusCode);
    print(response.body);
    print(response.request);
    print(response.reasonPhrase);
    print(response.persistentConnection);
  }
}
