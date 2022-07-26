import 'carro.dart';
import 'gol.dart';
import 'uno.dart';

// Variaveis de tipo superior e atributos de classe
// não são auto promovidas para o tipo checado!!!!
void main() {
  // Uno uno = Uno();
  // Gol gol = Gol();

  // var uno = Uno();
  // var gol = Gol();

  final uno = Uno();
  final gol = Gol();
  gol.tipoDeRodas();

  Carro golCarro = Gol();

  // Quando checamos se a variável é(is) de um tipo
  // Caso ela seja o dart vai automaticamente converter
  // essa instancia para a classe do Tipo.
  // É como se o dart fizesse isso :
  // Carro golCarro = Gol();
  // Gol golCarro = Gol();

  if (golCarro is Gol) {
    print(golCarro.tipoDeRodas());
  } else {
    print("Esse carro não é um gol");
  }

  var tipoDeRodas = (golCarro as Gol).tipoDeRodas();
  print("Tipo de rodas: $tipoDeRodas");

  // var tipoDeRodas2 = (uno as Gol).tipoDeRodas();
  // print(
  //     "Tipo de rodas: $tipoDeRodas"); //type 'Uno' is not a subtype of type 'Gol' in type cast

  printarDadosDoCarro(gol);
  print('');
  printarDadosDoCarro(uno);
}

void printarDadosDoCarro(Carro carro) {
  print(
    """
Carro:
  Tipo: ${carro.runtimeType}
  Portas: ${carro.portas}
  Rodas: ${carro.rodas}
  Motor: ${carro.motor}
  Velocidade Máxima: ${carro.velocidadeMaxima()}
  Tipos de Rodas: ${carro is Gol ? carro.tipoDeRodas() : 'Não disponível.'}

    """,
  );
}
