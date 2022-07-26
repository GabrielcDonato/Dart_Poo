class Pessoa {
  final String nome;
  final int idade;

  //O construtor const não pode ter variaveis quem são alteradas,
  //elas devem ser final

  const Pessoa({
    required this.nome,
    required this.idade,
  });
}
