import '../veiculos/veiculo.dart';

abstract interface class IVeiculoFactory {
  IVeiculo getVeiculo(String nomeVeiculo);
}
