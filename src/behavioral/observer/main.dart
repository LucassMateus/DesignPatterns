import 'classes/cliente.dart';
import 'classes/produto.dart';

void main() {
  final produto1 = Produto(nome: 'Playstation 5', disponivel: false);
  final produto2 = Produto(nome: 'SmartPhone', disponivel: false);

  final cliente1 = Cliente('João');
  final cliente2 = Cliente('Pedro');
  final cliente3 = Cliente('Maria');
  final cliente4 = Cliente('Ana');

  produto1.subscribe([cliente1, cliente2]);
  produto2.subscribe([cliente3, cliente4]);

  produto1.setDisponibilidade(true);
  produto2.setDisponibilidade(true);

  produto1.unSubscribe([cliente2]);
  produto2.unSubscribe([cliente4]);

  print('------------------------');
  produto1.setDisponibilidade(true);
  produto2.setDisponibilidade(true);
}
