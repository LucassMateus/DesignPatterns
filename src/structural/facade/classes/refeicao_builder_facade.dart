import '../../../creational/builder/classes/builders/refeicao_padrao_builder.dart';
import '../../../creational/builder/classes/builders/refeicao_vegana_builder.dart';

//Este facade é para o padrão builder do exemplo creational: src/creational/builder
class RefeicaoBuilderFacade {
  RefeicaoPadraoBuilder refeicaoPadraoBuilder = RefeicaoPadraoBuilder();
  RefeicaoVeganaBuilder refeicaoVeganaBuilder = RefeicaoVeganaBuilder();

  void buildRefeicaoPadrao() {
    refeicaoPadraoBuilder.reset();

    final refeicao = refeicaoPadraoBuilder;
    refeicao.buildAlimento().buildBebida().buildSobremesa();

    print('Refeição Padrão: ${refeicao.toString()}');
    print('Valor: ${refeicao.getValor()}');
  }

  void buildRefeicaoVegana() {
    refeicaoVeganaBuilder.reset();

    final refeicao = refeicaoVeganaBuilder;
    refeicao.buildAlimento().buildBebida().buildSobremesa();

    print('Refeição vegana: ${refeicao.toString()}');
    print('Valor: ${refeicao.getValor()}');
  }
}
