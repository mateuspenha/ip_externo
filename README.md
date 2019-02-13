Package para recuperação do IP Externo (http://checkip.dyndns.org).

## Uso

Um simples exemplo de uso:

```dart
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
```

## Recursos

ReadIP - Método que realiza a consulta do IP Externo.

gets

    getBody(); // Retorna na integralidade a resposta da API.
    getResponse(); // Retorna o código da consulta a API (Padrão 200 para sucesso).
    
    Quando houver sucesso (código 200) os métodos abaixo trazem retorno, do contrário retornam null;
    
    getIP(); // Recupera o IP Externo (formatado).     
    
## Funcionalidades e Bugs

Por favor para requisições de funcionalidades e bugs [issue tracker][tracker].

[tracker]: https://github.com/mateuspenha/ip_externo/issues