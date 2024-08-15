// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../interfaces/i_formato.dart';

class Retangulo implements IFormato {
  int? altura;
  int? largura;
  int? x;
  int? y;
  bool clone = false;

  Retangulo({
    this.altura,
    this.largura,
    this.x,
    this.y,
  });

  Retangulo.deOrigem(Retangulo origem) {
    x = origem.x;
    y = origem.y;
    altura = origem.altura;
    largura = origem.largura;
    clone = true;
  }

  @override
  String get statusClone => clone ? "Clone" : "Original";

  @override
  IFormato clonar() {
    return Retangulo.deOrigem(this);
  }

  @override
  bool operator ==(covariant Retangulo other) {
    if (identical(this, other)) return true;

    return other.x == x &&
        other.y == y &&
        other.altura == altura &&
        other.largura == largura &&
        other.clone == clone;
  }
}
