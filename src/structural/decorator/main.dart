import 'classes/decorators/camiseta_estampada_decorator.dart';
import 'classes/decorators/camiseta_manga_longa_decorator.dart';
import 'classes/produtos/camiseta.dart';

void main() {
  final camiseta = Camiseta();
  print(camiseta.getNome());
  print(camiseta.getValor().toStringAsFixed(2));

  print('----------------------');

  final camisetaMangaLonga = CamisetaMangaLongaDecorator(camiseta);
  print(camisetaMangaLonga.getNome());
  print(camisetaMangaLonga.getValor().toStringAsFixed(2));

  print('----------------------');

  final camisetaEstampada = CamisetaEstampadaDecorator(camiseta);
  print(camisetaEstampada.getNome());
  print(camisetaEstampada.getValor().toStringAsFixed(2));

  print('----------------------');

  final camisetaMangaLongaEstampada =
      CamisetaMangaLongaDecorator(camisetaEstampada);
  print(camisetaMangaLongaEstampada.getNome());
  print(camisetaMangaLongaEstampada.getValor().toStringAsFixed(2));
}
