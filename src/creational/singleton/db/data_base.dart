import '../models/usuario_model.dart';

class DataBase {
  static DataBase? _instance;
  final List<UsuarioModel> users = [];

  DataBase._();

  static DataBase getInstance() {
    if (_instance == null) {
      _instance = DataBase._();
    }

    return _instance!;
  }

  void addUsuario(UsuarioModel user) => users.add(user);
  void removerUsuario(UsuarioModel user) => users.removeWhere((u) => u == user);
  void atualizarUsuario(UsuarioModel user) {
    for (int i = 0; i < users.length; i++) {
      if (users[i].name == user.name) {
        users[i] = user;
        break;
      }
    }
  }

  void verUsuarios() => users.forEach(print);
}
