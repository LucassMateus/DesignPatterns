enum TipoEntregaEnum {
  Sedex(nome: 'Sedex'),
  PAC(nome: 'PAC'),
  Transportadora(nome: 'Transportadora'),
  Retirada(nome: 'Retirada');

  const TipoEntregaEnum({required this.nome});

  final String nome;
}
