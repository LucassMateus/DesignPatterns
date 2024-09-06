enum MetodoPagamentoEnum {
  Boleto(nome: 'Boleto'),
  CartaoCredito(nome: 'Cartão de Crédito'),
  CartaoDebito(nome: 'Cartão de Débito'),
  Pix(nome: 'Pix');

  const MetodoPagamentoEnum({required this.nome});
  final String nome;
}
