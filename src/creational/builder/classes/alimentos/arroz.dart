import '../refeicao_impl.dart';

class Arroz extends RefeicaoImpl {
  Arroz({required super.nome, required super.valor});

  @override
  String toString() {
    return 'Arroz(nome: $nome, valor: $valor)';
  }
}
