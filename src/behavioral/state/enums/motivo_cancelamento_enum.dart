enum MotivoCancelamentoEnum {
  Defeito(nome: 'Defeito'),
  ProdutoErrado(nome: 'Produto Errado'),
  AtrasoNaEntrega(nome: 'Atraso na Entrega'),
  ProdutoIndisponivel(nome: 'Produto Indisponível'),
  EnderecoIncorreto(nome: 'Endereço Incorreto');

  const MotivoCancelamentoEnum({required this.nome});
  final String nome;
}
