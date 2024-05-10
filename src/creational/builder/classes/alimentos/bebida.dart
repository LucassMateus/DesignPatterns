import '../refeicao_impl.dart';

class Bebida extends RefeicaoImpl {
  Bebida({required super.nome, required super.valor});

  @override
  String toString() {
    return 'Bebida(nome: $nome, valor: $valor)';
  }
}