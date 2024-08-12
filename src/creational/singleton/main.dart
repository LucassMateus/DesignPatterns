import 'db/data_base.dart';
import 'models/usuario_model.dart';

void main(List<String> args) {
  final db1 = DataBase.getInstance();
  db1.addUsuario(UsuarioModel(name: 'Lucas', age: 21));
  db1.addUsuario(UsuarioModel(name: 'João', age: 27));
  db1.addUsuario(UsuarioModel(name: 'Maria', age: 32));

  final db2 = DataBase.getInstance();
  db2.addUsuario(UsuarioModel(name: 'Pedro', age: 36));
  db2.addUsuario(UsuarioModel(name: 'Joana', age: 15));
  db2.addUsuario(UsuarioModel(name: 'Flavia', age: 22));

  print('DB1 USUÁRIOS:');
  db1.verUsuarios();
  print('----------------------------------------');
  print('DB2 USUÁRIOS:');
  db2.verUsuarios();
}
