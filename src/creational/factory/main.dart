import 'dart:math';
import 'fabricas/bicicleta_factory.dart';
import 'fabricas/carro_factory.dart';
import 'veiculos/veiculo.dart';

void main() {
  for (var i = 1; i <= 5; i++) {
    final int number = Random().nextInt(2);
    late final IVeiculo veiculo;

    veiculo = (number == 0)
        ? BicicletaFactory().getVeiculo('Bike: $i')
        : CarroFactory().getVeiculo('Carro: $i');

    veiculo.pegarPassageiro('Passageiro: $i');
    veiculo.parar();
    print('----------------------------------------');
  }
}
