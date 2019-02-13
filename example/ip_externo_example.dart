import 'package:ip_externo/ip_externo.dart';

main() async {
  var IP = new ip_externo();

  var result = await IP.ReadIP();

  // Sucesso
  if (IP.getResponse() == 200) {
    print('IP Externo: '+IP.getIP());
  } else {
    print('Código de Retorno: '+IP.getResponse().toString());
    print('Erro: '+IP.getBody());
  }
}