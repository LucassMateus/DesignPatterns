import 'controle_remoto.dart';

class ControleRemotoAvancado extends ControleRemoto {
  ControleRemotoAvancado(super.dispositivo);

  void silenciar() {
    dispositivo.definirVolume(0);
    print('Dispositivo silenciado.');
  }
}
