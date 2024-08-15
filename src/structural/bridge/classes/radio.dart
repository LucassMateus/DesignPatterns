import '../interfaces/i_dispositivo.dart';

class Radio implements IDispositivo {
  bool ligado = false;
  int volume = 0;

  @override
  void ligar() {
    ligado = true;
    print('Rádio ligado.');
  }

  @override
  void desligar() {
    ligado = false;
    print('Rádio desligado.');
  }

  @override
  void definirVolume(int volume) {
    final int maxVolume = 60;
    final int minVolume = 0;
    int newVolume = volume;

    if (newVolume < minVolume) newVolume = minVolume;
    if (newVolume > maxVolume) newVolume = maxVolume;

    this.volume = newVolume;
    print('Volume do rádio ajustado para $newVolume.');
  }

  @override
  int getVolume() {
    return volume;
  }
}
