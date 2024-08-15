
abstract interface class IRefeicaoBuilder {
  IRefeicaoBuilder buildAlimento();
  IRefeicaoBuilder buildBebida();
  IRefeicaoBuilder buildSobremesa();
  void reset();
  double getValor();
}


