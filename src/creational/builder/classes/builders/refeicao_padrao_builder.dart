import '../../interfaces/refeicao_builder.dart';
import '../alimentos/arroz.dart';
import '../alimentos/bebida.dart';
import '../alimentos/caixa_comida.dart';
import '../alimentos/carne.dart';
import '../alimentos/feijao.dart';
import '../alimentos/sobremesa.dart';

class RefeicaoPadraoBuilder implements IRefeicaoBuilder {
  CaixaComida _refeicao = CaixaComida();

  @override
  IRefeicaoBuilder buildBebida() {
    final bebida = Bebida(nome: 'Bebida', valor: 8);

    this._refeicao.addRefeicoes([bebida]);
    return this;
  }

  @override
  IRefeicaoBuilder buildAlimento() {
    final arroz = Arroz(nome: 'Arroz', valor: 20);
    final feijao = Feijao(nome: 'Feijao', valor: 30);
    final carne = Carne(nome: 'Carne', valor: 50);

    this._refeicao.addRefeicoes([arroz, feijao, carne]);
    return this;
  }

  @override
  RefeicaoPadraoBuilder buildSobremesa() {
    final sobremesa = Sobremesa(nome: 'SobreMesa', valor: 10);

    this._refeicao.addRefeicoes([sobremesa]);
    return this;
  }

  @override
  void reset() {
    this._refeicao = CaixaComida();
  }

  @override
  double getValor() {
    return this._refeicao.getValor();
  }

  CaixaComida getCaixaComida() {
    reset();
    return this._refeicao;
  }

  @override
  String toString() {
    return 'RefeicaoPadraoBuilder{_refeicao=${_refeicao.toString()}}';
  }
}
