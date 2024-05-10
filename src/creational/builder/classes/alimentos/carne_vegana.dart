import '../refeicao_impl.dart';

class CarneVegana extends RefeicaoImpl {
  CarneVegana({required super.nome, required super.valor});

  @override
  String toString() {
    return 'CarneVegetariana(nome: $nome, valor: $valor)';
  }
}