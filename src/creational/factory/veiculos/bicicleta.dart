import 'veiculo.dart';

class Bicicleta implements IVeiculo {
  Bicicleta({
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
