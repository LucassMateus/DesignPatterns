import '../interfaces/i_refeicao.dart';

abstract class RefeicaoImpl implements IRefeicao {
  final String nome;
  final double valor;
  RefeicaoImpl({
    required this.nome,
    required this.valor,
  });

  @override
  double getValor() {
    return this.valor;
  }
}
