import '../../interfaces/i_product.dart';

abstract class ProdutoDecorator implements IProduct {
  IProduct produto;

  ProdutoDecorator(this.produto);

  @override
  String getNome() => produto.getNome();

  @override
  double getValor() => produto.getValor();
}
