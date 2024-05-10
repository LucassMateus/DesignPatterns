import '../refeicao_impl.dart';

class Sobremesa extends RefeicaoImpl {
  Sobremesa({required super.nome, required super.valor});

  @override
  String toString() {
    return 'Sobremesa(nome: $nome, valor: $valor)';
  }
}