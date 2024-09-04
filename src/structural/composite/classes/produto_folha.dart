import 'produto_componente.dart';

class ProdutoFolha extends ProdutoComponente {
  final String nome;
  final double valor;

  ProdutoFolha(this.nome, this.valor);

  @override
  double getValor() => this.valor;

  @override
  void mostrarDetalhes([int? nivel = 0]) {
    final identacao = '  ' * (nivel ?? 0);
    print('$identacao Produto: $nome, Preço: R\$${valor.toStringAsFixed(2)}');
  }
}
