extension SaudacaoStringExtension on String {
  String saudacao() {
    //quando eu coloco o this assim sozinho
    //estou referenciando a classe diretamente nesse caso String
    return 'Olá, $this bem vindo';
  }
}
//Exemplo this:

class A {
  void a() {
    print(this);
    //Instance of 'A'
  }
}

void main() {
  A a = A();

  a.a();
  //Instance of 'A'
}
