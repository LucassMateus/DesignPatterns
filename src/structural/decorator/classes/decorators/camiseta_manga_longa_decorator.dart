import 'produto_decorator.dart';

class CamisetaMangaLongaDecorator extends ProdutoDecorator {
  CamisetaMangaLongaDecorator(super.produto);

  @override
  String getNome() {
    return super.getNome() + ' Manga Longa';
  }
}
