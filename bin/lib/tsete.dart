typedef String gabriel();

teste(gabriel funcao) {
  return funcao;
}

void testando(Function oi) {}

String a() {
  return 'oi';
}

void main() {
  // var oi = teste(a);
  // print(oi);
  // print(a());
  String c() {
    return "testando";
  }

  int d() {
    return 1;
  }

  var a = c();
  print(a);
  testando(d);

  b(() => c());
}

b(String Function() funcao) {}
