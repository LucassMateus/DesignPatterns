abstract class ProdutoComponente {
  double getValor();
  void mostrarDetalhes([int? nivel = 0]);
  void addFilhos(List<ProdutoComponente> produtos) {}
  void removeFilhos(List<ProdutoComponente> produtos) {}
}
