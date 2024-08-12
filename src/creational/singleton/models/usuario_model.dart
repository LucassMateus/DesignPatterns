// ignore_for_file: public_member_api_docs, sort_constructors_first

class UsuarioModel {
  final String name;
  final int age;
  UsuarioModel({
    required this.name,
    required this.age,
  });

  @override
  bool operator ==(covariant UsuarioModel other) {
    if (identical(this, other)) return true;

    return other.name == name && other.age == age;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode;

  @override
  String toString() => 'UsuarioModel(name: $name, age: $age)';
}
