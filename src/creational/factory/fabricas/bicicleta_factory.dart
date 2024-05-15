import '../veiculos/bicicleta.dart';
import '../veiculos/veiculo.dart';
import 'veiculo_factory.dart';

class BicicletaFactory implements IVeiculoFactory {
  @override
  IVeiculo getVeiculo(String nomeVeiculo) {
    return Bicicleta(nome: nomeVeiculo);
  }
}
