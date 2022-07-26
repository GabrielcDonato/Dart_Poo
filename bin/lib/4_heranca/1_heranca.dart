import 'cachorro.dart';

void main() {
  // var dog = Cachorro("Grande", 5);
  var dog = Cachorro("Pequeno", idadeFilho: 1);
  // var dog = Cachorro();
  print(dog.recuperarIdade());
  print(dog.calcularIdadeHumana());
  dog.idade = 10;

  // dog.idade = 5; //testing late final
  print(dog.recuperarIdade());
  print(dog.calcularIdadeHumana());

  dog.idade = 5;
  print(dog.recuperarIdade());
  print(dog.calcularIdadeHumana());

  print(dog.tamanho);

  print("""
Tamanho Cachorro: ${dog.tamanho}
Idade Cachorro: ${dog.idade}
Idade Humana: ${dog.calcularIdadeHumana()}
""");
}
