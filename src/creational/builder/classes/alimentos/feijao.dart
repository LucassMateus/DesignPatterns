import '../refeicao_impl.dart';

class Feijao extends RefeicaoImpl {
  Feijao({required super.nome, required super.valor});

  @override
  String toString() {
    return 'Feijao(nome: $nome, valor: $valor)';
  }
}