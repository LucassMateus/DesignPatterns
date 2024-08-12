import 'models/circulo.dart';
import 'models/retangulo.dart';

void main() {
  final retanguloOriginal = Retangulo(altura: 10, largura: 20, x: 100, y: 100);
  final cloneRetangulo = retanguloOriginal.clonar();
  final outroRetangulo = Retangulo(altura: 10, largura: 20, x: 100, y: 100);

  print('-----Retangulo-----');
  print("Status: ${retanguloOriginal.statusClone}.");
  print("Status: ${cloneRetangulo.statusClone}.");
  print("Status: ${outroRetangulo.statusClone}.");

  final circuloOriginal = Circulo(raio: 15, x: 50, y: 50);
  final cloneCirculo = circuloOriginal.clonar();
  final outroCirculo = Circulo(raio: 15, x: 50, y: 50);

  print('-----Circulo-----');
  print("Status: ${circuloOriginal.statusClone}.");
  print("Status: ${cloneCirculo.statusClone}.");
  print("Status: ${outroCirculo.statusClone}.");
}
