// ignore_for_file: public_member_api_docs, sort_constructors_first

class UserModel {
  final String name;
  final int age;
  UserModel({
    required this.name,
    required this.age,
  });

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.name == name && other.age == age;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode;

  @override
  String toString() => 'UserModel(name: $name, age: $age)';
}
