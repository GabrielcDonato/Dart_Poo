import 'pessoa.dart';

void main() {
  // String a;
  // a = '';

  var p1 =
      Pessoa(nome: "Gabriel", email: "gabriel@gmail.com", telefone: '1234');
  Pessoa p2 =
      Pessoa(nome: "Gabriel", email: "gabriel@gmail.com", telefone: '1234');

  print(p1.hashCode);
  print(p2.hashCode);

  // p2 = p1;
  // p1 = p2;

  print(p1);

  print(p2);

  if (p1 == p2) {
    print("É igual");
  } else {
    print("Não é igual");
  }
}

// String? a;

/*

1 - p1 = "Gabriel"
2 - p2 = "Gabriel"


1 - p1 = "Gabriel"
2 - p2 = "Gabriel"


*/