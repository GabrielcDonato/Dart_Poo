import 'animal.dart';

class Gato extends Animal {
  Gato({required int idadeFilho, required String tamanhoFilho})
      : super(idade: idadeFilho, tamanho: tamanhoFilho);

  @override
  int calcularIdadeHumana() {
    if (idade != null) {
      return idade! * 15;
    }
    return 0;
  }
}
