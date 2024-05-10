import 'classes/builders/refeicao_director_builder.dart';
import 'classes/builders/refeicao_padrao_builder.dart';
import 'classes/builders/refeicao_vegana_builder.dart';

void main() {
  final director = RefeicaoDirectorBuilder();

  final refeicaoPadrao = director.buildRefeicaoPadrao(RefeicaoPadraoBuilder());
  print('Refeição padrão: ${refeicaoPadrao.toString()}');
  print('Valor: ${refeicaoPadrao.getValor()}');

  print('-----------------------------------------');

  final refeicaoVegana = director.buildRefeicaoVegana(RefeicaoVeganaBuilder());
  print('Refeição vegana: ${refeicaoVegana.toString()}');
  print('Valor: ${refeicaoVegana.getValor()}');
}
