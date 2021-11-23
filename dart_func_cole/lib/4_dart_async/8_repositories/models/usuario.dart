import 'dart:convert';

import 'package:collection/collection.dart';
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


  Usuario copyWith({
    String? id,
    String? name,
    String? username,
    List<UserTypes>? userTypes,
  }) {
    return Usuario(
      id: id ?? this.id,
      name: name ?? this.name,
      username: username ?? this.username,
      userTypes: userTypes ?? this.userTypes,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'username': username,
      'userTypes': userTypes.map((x) => x.toMap()).toList()
    };
  }

  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
      id: map['id'] ??'',
      name: map['name']??'',
      username: map['username']??'',
      userTypes: map['user_types']?.map<UserTypes>((type){return UserTypes.fromMap(type);}).toList() ?? [],
    );
  }

  String toJson() => json.encode(toMap());

  factory Usuario.fromJson(String source) => Usuario.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Usuario(id: $id, name: $name, username: $username, userTypes: $userTypes)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;
  
    return other is Usuario &&
      other.id == id &&
      other.name == name &&
      other.username == username &&
      listEquals(other.userTypes, userTypes);
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      username.hashCode ^
      userTypes.hashCode;
  }
}
