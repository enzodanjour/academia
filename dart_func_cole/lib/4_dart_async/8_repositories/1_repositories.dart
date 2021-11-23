import 'dart:developer';

import 'package:dart_func_cole/4_dart_async/8_repositories/repositories/cidade_repository.dart';
import 'package:dart_func_cole/4_dart_async/8_repositories/repositories/user_repository.dart';

Future<void> main()async{
  var cidadeRepository = CidadeRepository();
  var userRepository = UserRepository();
  try {
    var cidade = await cidadeRepository.buscarCidade();
    print(cidade);

    var user = await userRepository.findUser(10);
    print(user ?? 'Usuario não encontrado');
    // if(user != null){
    //   print(user);
    // }else {
    //   print('Usuario não encontrado');
    // }
  } catch (e,s) {
    log(e.toString());
    log(s.toString());
  }
}