import 'controle_remoto.dart';

class ControleRemotoTecnologico extends ControleRemoto {
  ControleRemotoTecnologico(super.dispositivo);

  void conectarWifi(String rede) {
    print('Conectando à rede Wi-Fi: $rede...');
    print('Conectado à rede Wi-Fi com sucesso.');
  }

  void controlarPorVoz(String comando) {
    print('Executando comando de voz: $comando...');
    comando = comando.toLowerCase();

    if (comando.contains('desligar')) {
      desligar();
    } else if (comando.contains('ligar')) {
      ligar();
    } else if (comando.contains('aumentar volume')) {
      aumentarVolume();
    } else if (comando.contains('diminuir volume')) {
      diminuirVolume();
    } else if (comando.contains('silenciar')) {
      dispositivo.definirVolume(0);
      print('Dispositivo silenciado.');
    } else {
      print('Comando de voz não reconhecido.');
    }
  }
}
