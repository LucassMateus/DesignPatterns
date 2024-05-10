import '../../interfaces/refeicao_builder.dart';
import 'refeicao_padrao_builder.dart';
import 'refeicao_vegana_builder.dart';

class RefeicaoDirectorBuilder {
  IRefeicaoBuilder buildRefeicaoPadrao(RefeicaoPadraoBuilder builder) {
    builder.reset();
    final refeicao = builder.buildAlimento().buildBebida().buildSobremesa();

    return refeicao;
  }

    IRefeicaoBuilder buildRefeicaoVegana(RefeicaoVeganaBuilder builder) {
    builder.reset();
    final refeicao = builder.buildAlimento().buildBebida().buildSobremesa();

    return refeicao;
  }
}


