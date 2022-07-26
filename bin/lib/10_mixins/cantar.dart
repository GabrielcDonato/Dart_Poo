abstract class Cantar {
  // ESSA CLASSE PARA SER UTILIZADA COMO MIXIN NÃO PODE EXTENDER OUTRA CLASSE

  String cantar() {
    return 'Cantando';
  }

  // MESMO ELA NÃO EXTENDENDO OUTRA CLASSE PODE ACONTECER UMA SOBRESCRITA
  // DE METODO FAZENDO ALGO ASSIM:
  String habilidade() {
    return 'sobrescrevi o metodo de Artista por passar o mesmo nome de metodo';
  }
}
