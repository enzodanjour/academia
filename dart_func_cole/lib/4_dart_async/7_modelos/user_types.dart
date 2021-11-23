import 'dart:convert';


class UserTypes {
  final String id;
  final String userId;
  final String name;
  UserTypes({
    required this.id,
    required this.userId,
    required this.name,
  });

  

  UserTypes copyWith({
    String? id,
    String? userId,
    String? name,
  }) {
    return UserTypes(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'name': name,
    };
  }

  factory UserTypes.fromMap(Map<String, dynamic> map) {
    return UserTypes(
      id: map['id']??'',
      userId: map['userId']??'',
      name: map['name']??'',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserTypes.fromJson(String source) => UserTypes.fromMap(json.decode(source));

  @override
  String toString() => 'UserTypes(id: $id, userId: $userId, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is UserTypes &&
      other.id == id &&
      other.userId == userId &&
      other.name == name;
  }

  @override
  int get hashCode => id.hashCode ^ userId.hashCode ^ name.hashCode;
}
