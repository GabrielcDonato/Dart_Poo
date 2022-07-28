void main() {
  var pessoa = Pessoa();
  pessoa.setNome("Gabriel");
  print(pessoa.nome);
}

class Pessoa {
  String? _nome;

  String? get nome => _nome;
  // String get nome => _nome!;

  set nome(String? nome) => _nome = nome;

  set nomeRegra(String? nome) {
    if (nome != null && nome.length > 3) {
      _nome = nome;
    }
  }

// Algumas formas de tratar com nullSafety
// Como funciona getters e setters em outras linguagens:
  // String getNome() => _nome!;
  String? getNome() => _nome;

  void setNome(String? nome) => _nome = nome;
}
