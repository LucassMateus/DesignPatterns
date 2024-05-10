import '../refeicao_impl.dart';

class Carne extends RefeicaoImpl {
  Carne({required super.nome, required super.valor});

  @override
  String toString() {
    return 'Carne(nome: $nome, valor: $valor)';
  }
}