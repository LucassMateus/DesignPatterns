import 'classes/pedido.dart';
import 'enums/metodo_pagamento_enum.dart';
import 'enums/motivo_cancelamento_enum.dart';
import 'enums/tipo_entrega_enum.dart';

void main() {
  final pedido = Pedido(1, DateTime.now(), 500.00);
  pedido.printStatus();

  pedido.aprovarPedido(MetodoPagamentoEnum.Pix, TipoEntregaEnum.Sedex);
  pedido.entregarPedido(DateTime.now().add(Duration(days: 3)));

  print('---------------------');

  final pedido2 = Pedido(2, DateTime.now(), 1000.00);
  pedido2.printStatus();
  pedido.aprovarPedido(MetodoPagamentoEnum.CartaoCredito, TipoEntregaEnum.PAC);
  pedido2.cancelarPedido(
    DateTime.now().add(Duration(days: 1)),
    MotivoCancelamentoEnum.ProdutoErrado,
  );
}
