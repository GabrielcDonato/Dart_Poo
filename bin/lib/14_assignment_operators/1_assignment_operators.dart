String? nome;
void main() {
  //  =  -=  /=  %=  >>=  ^=
  //  +=  *=  ~/=  <<=  &=  |=

  var numero = 1;
  print(numero);

  numero += 2; //good
  // numero = numero + 2;     //bad
  print(numero);

  numero -= 2; //good
  // numero = numero - 2;     //bad
  print(numero);

  var numero2 = 2.0;
  // numero2 = numero2 / 2;
  numero2 /= 2;
  print(numero2);

//Mesma coisa
  print(nome);

  // if (nome == null) {
  //   nome = 'Gabriel';
  // }
  // print(nome);

  nome ??= 'Gabriel Donato';
  print(nome);
//
}
