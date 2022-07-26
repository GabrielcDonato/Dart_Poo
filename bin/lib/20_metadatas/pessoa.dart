import 'dart:io';

import 'fazer.dart';

@Fazer(
  quem: 'Gabriel na class',
  oque: 'Tentando ler a anotação da classe',
)
// @deprecated
@gzip
class Pessoa {
  @Fazer(
    quem: 'Gabriel no atributo',
    oque: 'Tentando ler a anotação do atributo',
  )
  String? nome;

  @Fazer(
    quem: 'Gabriel no metodo',
    oque: 'Tentando ler a anotação do metodo',
  )
  void fazerAlgo() {}
}
