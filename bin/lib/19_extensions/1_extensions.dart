import 'pessoa.dart';
import 'pessoa_saudacao_extension.dart';
import 'saudacao_string_extension.dart';

void main() {
  var nome = "Gabriel";
  print(nome.saudacao());

  var p1 = Pessoa(nome: "Gabriel Donato");
  // PessoaSaudacaoExtension macete para importar, escrever o nome da classe
  // para reconhecer o import de extensions
  print(p1.saudacao());
}
