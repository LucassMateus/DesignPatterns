// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'formato.dart';

class Circulo implements IFormato {
  int? raio;
  int? x;
  int? y;
  bool clone = false;

  Circulo({
    this.raio,
    this.x,
    this.y,
  });

  Circulo.deOrigem(Circulo origem) {
    x = origem.x;
    y = origem.y;
    raio = origem.raio;
    clone = true;
  }

  @override
  String get statusClone => clone ? "Clone" : "Original";

  @override
  IFormato clonar() {
    return Circulo.deOrigem(this);
  }

  @override
  bool operator ==(covariant Circulo other) {
    if (identical(this, other)) return true;

    return other.x == x &&
        other.y == y &&
        other.raio == raio &&
        other.clone == clone;
  }

  @override
  int get hashCode {
    return x.hashCode ^ y.hashCode ^ raio.hashCode ^ clone.hashCode;
  }
}
