import 'cliente.dart';

// Tomar cuidado com o late, ele é uma inicialização tardia, então acaba "ignorando" as regras
// de nullsafety.
// e também o ! (FORCE NON NULL)

late final nameGlobalLate;

void main() {
  var cliente = Cliente(
    nomePar: 'Gabriel',
  );

  if (cliente.idade != null) {
    print(cliente.idade!.toLowerCase());
  }
  print(cliente.idade);
  print(cliente.idade?.toLowerCase() ?? 'Está Nulo');
  print(cliente.idade!.toLowerCase());

  //se eu deixar o meu nome como late final, o meu late sobrescreve qualquer regra,
  //por isso msm sendo final o compilador ignora e deixa eu alterar a variavel.
  cliente.nome = 'Gabriel';
  print(cliente.nome);

  //porem a partir do momento que inicializo a minha variavel, nesse caso passando 'Gabriel',
  //ele volta agir como uma final nornal e não deixa eu alterar o valor dela.

  // cliente.nome = 'Donato';
  // print(cliente.nome);

  var clienteLateNull = ClienteLateNull();
  clienteLateNull.nomeOpcional = 'teste';
  print(clienteLateNull.nomeOpcional);
  // print(clienteLateNull.nome);

  nameGlobalLate = 'Gabriel';
  print(nameGlobalLate);

  nameGlobalLate = 1;
  print(nameGlobalLate);

  late final nameLateLocal;
  nameLateLocal = 1;
  // nameLateLocal = '';  ERROR
}
