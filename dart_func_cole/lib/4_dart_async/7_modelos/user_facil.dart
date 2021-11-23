
import 'dart:convert';

import 'package:dart_func_cole/4_dart_async/7_modelos/user_types.dart';

class Usuario {
  final String id;
  final String name;
  final String username;
  final List<UserTypes> userTypes;
  Usuario({
    required this.id,
    required this.name,
    required this.username,
    required this.userTypes,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'username': username,
      'usertypes': userTypes.map((x) => x.toMap()).toList(),
    };
  }

  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
      id: map['id'],
      name: map['name'],
      username: map['username'],
      userTypes: List<UserTypes>.from(map['usertypes']?.map((x) => UserTypes.fromMap(x)) ?? const []),
    );
  }

  String toJson() => json.encode(toMap());

  factory Usuario.fromJson(String source) => Usuario.fromMap(json.decode(source));
}
