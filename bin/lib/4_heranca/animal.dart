// class Animal {
//   String? tamanho;
//   int? idade;

//   Animal(
//     this.tamanho,
//     this.idade,
//   );

//   int recuperarIdade() {
//     return idade ?? 0;
//   }

// int calcularIdadeHumana(); Erro / para fazer uma contrato a minha classe
// DEVE ser uma classe abstrata

//   int? get pegarIdade => idade;
//   int get pegarIdadeNull => idade ?? 0;
// }
////////////////////////////////////////////////////////////////////////////////
// abstract class Animal {
//   String? tamanho;
//   int? idade;

// late  final int? idade;

//   int recuperarIdade() {
//     return idade ?? 0;
//   }

//   int calcularIdadeHumana();
// }
////////////////////////////////////////////////////////////////////////////////

abstract class Animal {
  String? tamanho;
  int? idade;
  Animal({
    required this.tamanho,
    required this.idade,
  });

  int recuperarIdade() {
    return idade ?? 0;
  }

  int calcularIdadeHumana();
}
