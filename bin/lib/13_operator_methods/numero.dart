class Numero {
  int i;

  Numero(this.i);

  // Numero operator +(Numero numero2) {
  //   return Numero(i + numero2.i);
  // }

  Numero operator +(Numero numero2) {
    return Numero((i + numero2.i) * 2);
  }

  Numero operator -(Numero numero2) {
    return Numero(i - numero2.i);
  }
}

class Test {
  String name;
  Test(this.name);

  String testando(Test primeiroNome) {
    return "${primeiroNome.name} Donato";
  }
}

void main() {
  var a = Test("Gabriel");

  var b = a.testando(Test(""));
  var c = a.testando(a);
  print(b);
  print(c);
}
