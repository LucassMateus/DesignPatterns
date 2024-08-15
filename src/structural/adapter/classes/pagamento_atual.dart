import '../interfaces/i_pagamento.dart';

class PagamentoAtual implements IPagamento {
  @override
  void pagar(double valor) {
    print(
        'Pagamento de \$${valor.toStringAsFixed(2)} realizado pelo sistema atual.');
  }
}
