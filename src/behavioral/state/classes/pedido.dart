import '../enums/metodo_pagamento_enum.dart';
import '../enums/motivo_cancelamento_enum.dart';
import '../enums/tipo_entrega_enum.dart';
import 'pedido_state.dart';

class Pedido {
  final int id;
  final DateTime dataPedido;
  final double valorTotal;
  PedidoState state;

  Pedido(
    this.id,
    this.dataPedido,
    this.valorTotal,
  ) : state = PedidoPendente() {
    print('Pedido: $id criado em $dataPedido com valor total de $valorTotal');
  }

  void aprovarPedido(
      MetodoPagamentoEnum metodoPagamento, TipoEntregaEnum tipoEntrega) {
    state = PedidoAprovado(
      metodoPagamento: metodoPagamento,
      tipoEntrega: tipoEntrega,
    );
    printStatus();
  }

  void entregarPedido(DateTime data) {
    state = PedidoEntregue(dataEntrega: data);
    printStatus();
  }

  void cancelarPedido(DateTime data, MotivoCancelamentoEnum motivo) {
    state = PedidoCancelado(
      dataCancelamento: data,
      motivoCancelamento: motivo,
    );
    printStatus();
  }

  void printStatus() {
    state.printStatus();
  }
}
