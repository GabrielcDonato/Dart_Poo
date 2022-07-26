import 'carro.dart';
import 'gol.dart';
import 'uno.dart';
// DIFERENÇA ENTRE IMPLEMENT E EXTENDS:
// QUANDO VOCÊ EXTENDE VOCÊ HERDA TUDO QUE TEM NAQUELA CLASSE, INCLUSIVE OS
// DADOS.

// QUANDO VOCÊ IMPLEMENTA A CLASSE ELA VEM "VAZIA" APENAS COM O "CONTRATO"
// QUE VOCÊ DEVE SEGUIR, IMPLEMENTANDO OS DADOS OBRIGATORIOS.

// O QUE TEMOS DE "IGUAL" ENTRE ELES É QUE SE EU IMPLEMENTEI OU EXTENDI
// UMA CLASSE GOL DA CLASSE PAI CARRO, EM AMBAS SITUAÇÕES O GOL TERÁ O
// MESMO TIPO DO PAI, SENDO EXTENDS OU IMPLEMENTS.

// O CONCEITO DO " É UM " GOL É UM CARRO, UNO É UM CARRO, SENDO IMPLEMENTS OU
// EXTENDS.

void main() {
  // Uno uno = Uno();
  // Gol gol = Gol();

  // var uno = Uno();
  // var gol = Gol();

  final uno = Uno();
  final gol = Gol();
  gol.tipoDeRodas();
  Carro gol2 = Gol();
  // gol2.tipoDeRodas();
  // Eu restringi a variavel gol2 ao tipo Carro, então por isso ela
  // não tem acesso ao metodo .tipoDeRodas(); porque ela só está presente na
  // classe Gol(), mesmo o gol2 sendo uma instancia de Gol().

  printarDadosDoCarro(uno);
  print('');
  printarDadosDoCarro(gol);
}

// Nesse print só vou ter acesso as "coisas" que tem no carro
// no caso adicionamos o metodo tipoDeRodas na Classe Gol, na classe carro
// não conseguimos chamar ele, apenas no gol.

// o metodo tipoDeRoda não está dentro de carro então não temos acesso a
// ele.
void printarDadosDoCarro(Carro carro) {
  print(
    // tipo de rodas: ${carro.tipoDeRodas}
    """
Carro:
  Tipo: ${carro.runtimeType}
  Portas: ${carro.portas}
  Rodas: ${carro.rodas}
  Motor: ${carro.motor}
  Velocidade Máxima: ${carro.velocidadeMaxima()}

    """,
  );
}

// class A {
//   var a = Gol();

//   void aa() {
//     a.motor = "";
//   }
// }
