void main() {
  var pessoa = Pessoa();
  pessoa.nome = 'Gabriel';
  pessoa.email = 'gabriel@gmail.com';
  pessoa.site = 'www.gabriel.com.br';

  print("""
  Pessoa:
    Nome: ${pessoa.nome}
    Email: ${pessoa.email}
    Site: ${pessoa.site}
""");

  //pode usar cascade tanto atributo quanto classe
  var pessoaCascade = Pessoa()
    // var a = 1;  //se tiver algo no caminho ele ja da erro//
    ..nome = ''
    ..email = ''
    ..site = '';

  print(pessoaCascade.email);

  var mapa = Map<String, String>()
    ..putIfAbsent('nome', () => 'gabriel')
    ..putIfAbsent('email', () => 'gabriel@gmail.com')
    ..putIfAbsent('site', () => 'gabriel.com.br');

  // var map  = <String, String>{}
  var map = {}
    ..putIfAbsent('nome', () => 'gabriel')
    ..putIfAbsent('email', () => 'gabriel@gmail.com')
    ..putIfAbsent('site', () => 'gabriel.com.br');

  print(map);
  print(map['email']);

  var list = []
    ..add("gabriel")
    ..add("lucas")
    ..add("bruno");
  print(list);

  //consigo fazer ele sem atribuir a uma variavel tbm

  Pessoa()
    ..nome
    ..email
    ..site
    ..printPessoas()
    ..nome = "gabriel"
    ..email = "gabriel@gmail.com"
    ..site = "gabriel.com.br"
    ..printPessoas()
    ..nome = null
    ..email = ''
    ..site = 'gabriel.com.br'
    ..printPessoas();
}

class Pessoa {
  String? nome;
  String? email;
  String? site;

  void printPessoas() {
    print("""
  Nome: $nome
  Email: $email
  Site: $site
""");
  }
}
