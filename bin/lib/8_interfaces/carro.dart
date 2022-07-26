// Isso aqui é uma classe abstrata
// pois tem métodos implementados!!!
abstract class CarroClasseAbstrata {
  void velocidadeMaxima() {}
}

// Isso aqui é uma interface / "Contrato"
// pois não tem nenhum método implementado!!!
abstract class Carro {
  abstract int portas;
  abstract int rodas;
  abstract String motor;

  int velocidadeMaxima();
}
// Usamos o abstract para dizer que o filho deve implementar esse propriedades
// tbm, se colocássemos apenas o ? ele ficaria possivelmente null
//interfaces são feitas para serem implementadas pelos filhos

//Se eu implementar uma classe abstrata que ja possue metodos implementados
//Ele serão sobrescritos na classe filha.

// Se eu quero criar uma interface eu nunca devo passar um metodo ja implemetado
// nela, porque ele vai ser ignorado de qualquer forma.
abstract class Carro2 {
  abstract int portas;
  abstract int rodas;
  abstract String motor;

  void velocidadeMaxima();

  void velocidadeMinima() {
    print('40km');
  }
}
