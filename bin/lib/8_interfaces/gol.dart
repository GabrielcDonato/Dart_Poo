import 'carro.dart';

class Gol implements Carro {
  //o @override é para dizer que eles foram sobrescritos a partir do pai.

  @override
  String motor = '2.0';

  @override
  int portas = 4;

  @override
  int rodas = 4;

  @override
  int velocidadeMaxima() {
    return 200;
  }

  String tipoDeRodas() {
    return 'Esportivas';
  }
}

// Como estou implementando uma classe ele me obriga a passar tudo novamente,
// mesmo nesse caso sendo uma classe abstrata, que já possui o metodo
// velocidadeMinima() implementado nela, ele me obriga a reescrever ele, assim
// perdendo o que ele já tinha na classe pai.
class X implements Carro2 {
  @override
  String motor = '';

  @override
  int portas = 0;

  @override
  int rodas = 0;

  @override
  void velocidadeMaxima() {
    // TODO: implement velocidadeMaxima
  }

  @override
  void velocidadeMinima() {
    // TODO: implement velocidadeMinima
  }
}
