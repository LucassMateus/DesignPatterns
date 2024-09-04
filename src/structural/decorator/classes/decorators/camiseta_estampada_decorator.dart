import 'produto_decorator.dart';

class CamisetaEstampadaDecorator extends ProdutoDecorator {
  CamisetaEstampadaDecorator(super.produto);

  @override
  double getValor() {
    return super.getValor() * 1.10;
  }

  @override
  String getNome() {
    return super.getNome() + ' Estampada';
  }
}
