// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../interfaces/i_observable.dart';
import '../interfaces/i_observer.dart';

class Produto implements IObservable {
  final String _nome;
  bool _disponivel;
  final List<IObserver> _clientes = [];

  Produto({
    required String nome,
    required bool disponivel,
  })  : _nome = nome,
        _disponivel = disponivel;

  String get nome => _nome;
  bool get disponivel => _disponivel;
  List<IObserver> get clientes => _clientes;

  @override
  void notify() {
    if (disponivel) {
      for (var cliente in clientes) {
        cliente.update('O produto $nome está disponível');
      }
    }
  }

  @override
  void subscribe(List<IObserver> observers) {
    clientes.addAll(observers);
  }

  @override
  void unSubscribe(List<IObserver> observers) {
    for (var cliente in observers) {
      clientes.remove(cliente);
    }
  }

  void setDisponibilidade(bool value) {
    _disponivel = value;
    notify();
  }
}
