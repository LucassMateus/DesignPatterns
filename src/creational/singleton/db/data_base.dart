import '../models/user_model.dart';

class DataBase {
  static DataBase? _instance;
  final List<UserModel> users = [];

  DataBase._();

  static DataBase getInstance() {
    if (_instance == null) {
      _instance = DataBase._();
    }

    return _instance!;
  }

  void addUser(UserModel user) => users.add(user);
  void removeUser(UserModel user) => users.removeWhere((u) => u == user);
  void updateUser(UserModel user) {
    for (int i = 0; i < users.length; i++) {
      if (users[i].name == user.name) {
        users[i] = user;
        break;
      }
    }
  }

  void showUsers() => users.forEach(print);
}
