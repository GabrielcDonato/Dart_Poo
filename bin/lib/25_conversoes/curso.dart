class Curso {
  String nome;
  String descricao;
  Curso({
    required this.nome,
    required this.descricao,
  });


//lembrando que o toString serve para eu conseguir ver no meu print o que
//está sem atribuido, sem ele nesse exemplo viria um:
//Instance of 'Curso', Instance of 'Curso', Instance of 'Curso' quando eu
//printasse
  @override
  String toString() => 'Curso(nome: $nome, descricao: $descricao)';
}
