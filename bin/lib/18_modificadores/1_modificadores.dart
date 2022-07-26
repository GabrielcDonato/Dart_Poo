import 'pessoa.dart';

void main() {
  // Só consigo definir meu construtor como const aqui porque eu defini
  // ele como const na classe pessoa

  var p1 = const Pessoa(nome: 'nome', idade: 1);
  var p2 = const Pessoa(nome: 'nome', idade: 1);
  var p3 = const Pessoa(nome: 'nome', idade: 111);

  const nome = 'gabriel';
  var nome2 = 'gabriel';

  var p4 = const Pessoa(nome: nome, idade: 1);
  var p5 = Pessoa(nome: nome2, idade: 1);

  var a = p1 == p2;

  // Fazendo o construtor constante e passando os mesmo parametros quando criar
  // a minha classe ele ira apontar para o mesmo caminho na memoria
  // (hashcode), assim economizando memoria
  // OBS: o construtor deve ser const e na hora de criar a variavel ele tambem
  // tem que ser const  var exemplo = const Pessoa();

  var b = p1 == p3;
  print(a);
  print(b);
}
