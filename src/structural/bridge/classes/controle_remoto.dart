import '../interfaces/i_dispositivo.dart';

class ControleRemoto {
  final IDispositivo dispositivo;

  const ControleRemoto(this.dispositivo);

  void ligar() {
    dispositivo.ligar();
  }

  void desligar() {
    dispositivo.desligar();
  }

  void aumentarVolume() {
    dispositivo.definirVolume(dispositivo.getVolume() + 10);
  }

  void diminuirVolume() {
    dispositivo.definirVolume(dispositivo.getVolume() - 10);
  }
}
