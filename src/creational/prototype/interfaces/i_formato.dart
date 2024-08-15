abstract interface class IFormato {
  int? x;
  int? y;

  IFormato({this.x, this.y});

  IFormato.clonar(IFormato origem);

  IFormato clonar();

  String get statusClone;
}
