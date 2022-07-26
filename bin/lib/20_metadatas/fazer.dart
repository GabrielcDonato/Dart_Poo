class Fazer {
  final String quem;
  final String oque;

// Para conseguir utilizar essa classe como uma anotação
// eu sou obrigado a passar o construtor como uma constante.
  const Fazer({
    required this.quem,
    required this.oque,
  });
}
