import 'animal.dart';

// Aqui podemos dizer que nosso Cachorro é um Animal já que ele herdou tudo que tinha na classe Animal
// class Cachorro extends Animal {

//   @override
//   int calcularIdadeHumana() {
//     if (idade != null) {
//       return idade! * 7;
//     }
//     return 0;
//   }
// }
////////////////////////////////////////////////////////////////////////////////
// class Cachorro extends Animal {
//   Cachorro(String? tamanho, int? idade) : super(tamanho, idade);

//   @override
//   int calcularIdadeHumana() {
//     if (idade != null) {
//       return idade! * 7;
//     }
//     return 0;
//   }
// }
////////////////////////////////////////////////////////////////////////////////
class Cachorro extends Animal {
  Cachorro(String? tamanhoFilho, {required int? idadeFilho})
      : super(idade: idadeFilho, tamanho: tamanhoFilho);

  @override
  int calcularIdadeHumana() {
    if (idade != null) {
      return idade! * 7;
    }
    return 0;
  }
}
