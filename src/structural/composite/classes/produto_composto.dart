// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'produto_componente.dart';

class ProdutoComposto extends ProdutoComponente {
  final String nome;
  final List<ProdutoComponente> _filhos = [];

  ProdutoComposto(this.nome);

  @override
  void addFilhos(List<ProdutoComponente> produtos) => _filhos.addAll(produtos);

  @override
  void removeFilhos(List<ProdutoComponente> produtos) =>
      _filhos.removeWhere((produto) => produtos.contains(produto));

  @override
  double getValor() {
    double valor = 0;
    _filhos.forEach((produto) => valor += produto.getValor());

    return valor;
  }

  @override
  void mostrarDetalhes([int? nivel = 0]) {
    final identacao = '  ' * (nivel ?? 0);

    print('$identacao Pedido: $nome');

    for (var filho in _filhos) {
      filho.mostrarDetalhes(nivel! + 1);
    }
    print('$identacao Preço Total: R\$${this.getValor()}');
  }
}
