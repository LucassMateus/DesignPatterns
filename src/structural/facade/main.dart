import 'classes/refeicao_builder_facade.dart';

void main() {
  final facade = RefeicaoBuilderFacade();

  facade.buildRefeicaoPadrao();
  print('-------------------');
  facade.buildRefeicaoVegana();
}
