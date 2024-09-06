import '../interfaces/i_observer.dart';

class Cliente implements IObserver {
  final String nome;

  Cliente(this.nome);

  @override
  void update(value) {
    print('Cliente $nome recebeu a notificação: $value');
  }
}
