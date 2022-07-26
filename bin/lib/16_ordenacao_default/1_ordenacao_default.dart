import 'cliente.dart';

void main() {
  var c1 = Cliente(nome: 'Rodrigo', telefone: '1234');
  var c2 = Cliente(nome: 'Luana', telefone: '1234');
  var c3 = Cliente(nome: 'Guilherme', telefone: '1234');
  var c4 = Cliente(nome: 'Arthur', telefone: '1234');

  var lista = [c1, c2, c3, c4];
  print(lista);
  lista.sort();
  // lista.sort((c1, c2) => c1.nome.compareTo(c2.nome));
  print(lista);
}
