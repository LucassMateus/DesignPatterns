import '../interfaces/i_dispositivo.dart';

class Tv implements IDispositivo {
  bool ligado = false;
  int volume = 0;

  @override
  void definirVolume(int volume) {
    final int maxVolume = 100;
    final int minVolume = 0;
    int newVolume = volume;

    if (newVolume < minVolume) newVolume = minVolume;
    if (newVolume > maxVolume) newVolume = maxVolume;

    this.volume = newVolume;
    print('Volume da TV ajustado para $newVolume.');
  }

  @override
  void desligar() {
    this.ligado = false;
    print('TV desligada.');
  }

  @override
  int getVolume() {
    return this.volume;
  }

  @override
  void ligar() {
    this.ligado = true;
    print('TV ligada.');
  }
}
