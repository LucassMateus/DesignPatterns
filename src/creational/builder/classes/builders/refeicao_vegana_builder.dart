import '../../interfaces/refeicao_builder.dart';
import '../alimentos/arroz.dart';
import '../alimentos/bebida.dart';
import '../alimentos/caixa_comida.dart';
import '../alimentos/carne_vegana.dart';
import '../alimentos/feijao.dart';
import '../alimentos/sobremesa.dart';

class RefeicaoVeganaBuilder implements IRefeicaoBuilder {
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
    final carneVegana = CarneVegana(nome: 'CarneVegana', valor: 35);
    this._refeicao.addRefeicoes([arroz, feijao, carneVegana]);
    return this;
  }

  @override
  IRefeicaoBuilder buildSobremesa() {
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
    return 'RefeicaoVeganaBuilder{_refeicao=${_refeicao.toString()}}';
  }
}
