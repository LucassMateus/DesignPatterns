import 'classes/pagamento_adapter.dart';
import 'classes/pagamento_atual.dart';
import 'classes/pagamento_novo.dart';
import 'interfaces/i_pagamento.dart';

void main(List<String> args) {
  IPagamento pagamentoAtual = PagamentoAtual();
  pagamentoAtual.pagar(100.0);

  PagamentoNovo novoServicoPagamento = PagamentoNovo();
  IPagamento pagamentoAdapter = PagamentoAdapter(novoServicoPagamento);
  pagamentoAdapter.pagar(150.0);
}
