import 'classes/produto_composto.dart';
import 'classes/produto_folha.dart';

void main() {
  final telefone = ProdutoFolha('Telefone', 2000);
  final foneDeOuvido = ProdutoFolha('Fone de ouvido', 500);
  final carregador = ProdutoFolha('Carregador', 200);

  final caixa1 = ProdutoComposto('Caixa 1');
  caixa1.addFilhos([telefone, foneDeOuvido, carregador]);
  caixa1.mostrarDetalhes();

  print('-------------------');

  final notebook = ProdutoFolha('Notebook', 10000);
  final mouse = ProdutoFolha('Mouse', 100);

  final caixa2 = ProdutoComposto('Caixa 2');
  caixa2.addFilhos([notebook, mouse]);
  caixa2.mostrarDetalhes();

  print('-------------------');

  final caixaPedido = ProdutoComposto('Caixa do Pedido');
  caixaPedido.addFilhos([caixa1, caixa2]);
  caixaPedido.mostrarDetalhes();
}
