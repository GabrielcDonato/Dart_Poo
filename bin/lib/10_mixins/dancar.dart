import 'artista.dart';

// o ON seria uma condição para onde esse mixin pode ser chamado
// nesse caso para usarmos ele teria que ter a classe Artista extendida.
mixin Dancar on Artista {
  String dancar() {
    return "Dançando";
  }

  @override
  String habilidade() {
    return 'Dançar';
  }
  // ela sobrescreve com ou sem a annotation @OVERRIDE;

  // String habilidade() {
  //   return 'Dançar';
  // }
}

mixin Falar {}

mixin Andar on Pessoa {}

class Pessoa {}

class Roberto extends Pessoa with Andar {}
