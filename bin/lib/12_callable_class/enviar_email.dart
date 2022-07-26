class EnviarEmail {
  bool call(String email) {
    print("Chamando método call");
    return enviar(email);
  }
  // bool call(String email) {
  //   print("Chamando método call");
  //   return true;
  // }

  bool enviar(String email) {
    print("Chamando método enviar");
    return true;
  }

  int soma(int b) {
    return soma2(b);
  }

  int soma2(int a) {
    return a;
  }
}
