import '../enums/metodo_pagamento_enum.dart';
import '../enums/motivo_cancelamento_enum.dart';
import '../enums/tipo_entrega_enum.dart';

abstract class PedidoState {
  final String mensagem;

  PedidoState({required this.mensagem});

  void printStatus() {
    print('Status do pedido: $mensagem');
  }
}

class PedidoPendente extends PedidoState {
  PedidoPendente() : super(mensagem: 'Pendente');
}

class PedidoAprovado extends PedidoState {
  final MetodoPagamentoEnum metodoPagamento;
  final TipoEntregaEnum tipoEntrega;

  PedidoAprovado({
    required this.metodoPagamento,
    required this.tipoEntrega,
  }) : super(mensagem: 'Aprovado');

  @override
  void printStatus() {
    super.printStatus();
    print('Método de pagamento: ${metodoPagamento.nome}');
    print('Tipo de entrega: ${tipoEntrega.nome}');
  }
}

class PedidoEntregue extends PedidoState {
  final DateTime dataEntrega;

  PedidoEntregue({required this.dataEntrega}) : super(mensagem: 'Entregue');

  @override
  void printStatus() {
    super.printStatus();
    print('Data de entrega: $dataEntrega');
  }
}

class PedidoCancelado extends PedidoState {
  final MotivoCancelamentoEnum motivoCancelamento;
  final DateTime dataCancelamento;

  PedidoCancelado({
    required this.motivoCancelamento,
    required this.dataCancelamento,
  }) : super(mensagem: 'Cancelado');

  @override
  void printStatus() {
    super.printStatus();
    print('Motivo do cancelamento: ${motivoCancelamento.nome}');
    print('Data do cancelamento: $dataCancelamento');
  }
}
