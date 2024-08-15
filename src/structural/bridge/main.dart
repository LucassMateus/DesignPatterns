import 'classes/controle_remoto.dart';
import 'classes/controle_remoto_avancado.dart';
import 'classes/controle_remoto_tecnologico.dart';
import 'classes/radio.dart';
import 'classes/tv.dart';
import 'interfaces/i_dispositivo.dart';

void main() {
  IDispositivo tv = Tv();
  ControleRemoto controleTv = ControleRemoto(tv);

  controleTv.ligar();
  controleTv.aumentarVolume();
  controleTv.desligar();

  print('-------------------');

  IDispositivo radio = Radio();
  ControleRemotoAvancado controleRadio = ControleRemotoAvancado(radio);

  controleRadio.ligar();
  controleRadio.aumentarVolume();
  controleRadio.silenciar();
  controleRadio.desligar();

  print('-------------------');

  ControleRemotoTecnologico controleTvTecnologico =
      ControleRemotoTecnologico(tv);

  controleTvTecnologico.conectarWifi('MinhaRedeWiFi');
  controleTvTecnologico.controlarPorVoz('Ligar');
  controleTvTecnologico.controlarPorVoz('Aumentar volume');
  controleTvTecnologico.controlarPorVoz('Diminuir volume');
  controleTvTecnologico.controlarPorVoz('Silenciar');
  controleTvTecnologico.controlarPorVoz('Desligar');
}
