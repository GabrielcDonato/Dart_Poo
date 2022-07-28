void main() {
  final nomes = ['Rodrigo', 'Gabriel', 'Guilherme', 'Lucas'];

  final pessoasAntigo = nomes.map((e) => Pessoa(e)).toList();

  // usando construtor default, para apontarmos para ele foi criado esse
  // novo operador "new", basta darmos .new no nosso construtor default.
  final pessoas = nomes.map<Pessoa>(Pessoa.new).toList();
  final pessoasFromJson = nomes.map<Pessoa>(Pessoa.fromJson).toList();

  // usando construtor nomeado
  // final pessoas = nomes.map<Pessoa>(Pessoa.nome).toList();

  for (var element in pessoas) {
    print("Olá ${element.nome}");
  }

  // funcaoQualquer((p0) {});
  funcaoQualquer(Pessoa.new);
}

void funcaoQualquer(void Function(String) funcao) {
  funcao('gabriel');
}

//Tipos de retorno além de void que ele também aceitaria: Pessoa, Object, dynamic

// void funcaoQualquer(Pessoa Function(String) funcao) {
//   funcao('gabriel');
// }
// void funcaoQualquer(Object Function(String) funcao) {
//   funcao('gabriel');
// }
// void funcaoQualquer(dynamic Function(String) funcao) {
//   funcao('gabriel');
// }

class Pessoa {
  String nome;

  Pessoa(this.nome);
  Pessoa.nome(this.nome);

  factory Pessoa.fromJson(String nomeParametro) {
    return Pessoa.nome(nomeParametro);
  }
}
