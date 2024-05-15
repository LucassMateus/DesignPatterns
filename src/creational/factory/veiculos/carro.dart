import 'veiculo.dart';

class Carro implements IVeiculo {
  Carro({
    required this.nome,
  });

  final String nome;

  @override
  void parar() {
    print('$nome parou!');
  }

  @override
  void pegarPassageiro(String nomePassageiro) {
    print('$nome está indo buscar $nomePassageiro');
  }
}
