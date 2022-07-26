import 'pessoa.dart';

void main() {
  var pessoa = Pessoa(
    nome: 'Gabriel Donato',
    idade: 19,
    sexo: 'Masculino',
  );
  var pessoaSemNome = Pessoa.semNome(
    idade: 19,
    sexo: 'Masculino',
  );
  print(pessoa.nome);

  var pessoaVazia = Pessoa.empty();
  var pessoaFabrica = Pessoa.fabrica("Gabriel Donato");
}
