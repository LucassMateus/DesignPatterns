import '../../interfaces/i_refeicao.dart';
import '../refeicao_impl.dart';

class CaixaComida implements IRefeicao {
  List<RefeicaoImpl> _refeicoes = [];

  @override
  double getValor() {
    double valor = 0;
    this._refeicoes.forEach((e) {
      valor += e.getValor();
    });

    return valor;
  }

  void addRefeicoes(List<RefeicaoImpl> refeicoes) {
    refeicoes.forEach((e) {
      this._refeicoes.add(e);
    });
  }

  @override
  String toString() => 'CaixaComida(_refeicoes: $_refeicoes)';
}
