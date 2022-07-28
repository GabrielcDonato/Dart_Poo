//Para os imports funcionar, eles sempre tem que estar no topo,
//antes da palavra reservada part.

import 'telefone.dart';

part 'endereco.dart';
part 'cpf.dart';
// import 'telefone.dart'; // ERROR

class Pessoa {
  String? nome;

  _Endereco endereco = _Endereco();

  _Cpf cpf = _Cpf();
}
