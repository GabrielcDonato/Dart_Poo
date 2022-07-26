import 'joao.dart';

void main() {
  final joao = Joao();

  // João é Um Artista           ( nome classe )
  // João é Um Cantar            ( nome classe )
  // João é Um Dancar            ( nome classe )

  print(joao.habilidade()); //sobrescrevi o metodo de artista na classe dancar
  print(joao.cantar());
  print(joao.dancar());

  print("""

  João
    Habilidade: ${joao.habilidade()}
    Cantar: ${joao.cantar()}
    Dançar: ${joao.dancar()}

""");

  print(joao.habilidade());
  print(joao.cantar());
  print(joao.dancar());
}
