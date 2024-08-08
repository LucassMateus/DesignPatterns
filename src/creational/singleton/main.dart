import 'db/data_base.dart';
import 'models/user_model.dart';

void main(List<String> args) {
  final db1 = DataBase.getInstance();
  db1.addUser(UserModel(name: 'Lucas', age: 21));
  db1.addUser(UserModel(name: 'João', age: 27));
  db1.addUser(UserModel(name: 'Maria', age: 32));

  final db2 = DataBase.getInstance();
  db2.addUser(UserModel(name: 'Pedro', age: 36));
  db2.addUser(UserModel(name: 'Joana', age: 15));
  db2.addUser(UserModel(name: 'Flavia', age: 22));

  print('DB1 USERS:');
  db1.showUsers();
  print('----------------------------------------');
  print('DB2 USERS:');
  db2.showUsers();
}
