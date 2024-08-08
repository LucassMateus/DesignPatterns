import '../veiculos/carro.dart';
import '../veiculos/veiculo.dart';
import 'veiculo_factory.dart';

class CarroFactory implements IVeiculoFactory {
  @override
  IVeiculo getVeiculo(String nomeVeiculo) {
    return Carro(nome: nomeVeiculo);
  }
}
