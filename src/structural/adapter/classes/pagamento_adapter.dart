import '../interfaces/i_pagamento.dart';
import 'pagamento_novo.dart';

class PagamentoAdapter implements IPagamento {
  final PagamentoNovo _novoPagamentoServico;

  PagamentoAdapter(this._novoPagamentoServico);

  @override
  void pagar(double valor) {
    _novoPagamentoServico.processarPagamento(valor);
  }
}
