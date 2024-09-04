import '../../interfaces/i_product.dart';

class Camiseta implements IProduct {
  @override
  String getNome() => 'Camiseta';

  @override
  double getValor() => 99.99;
}
