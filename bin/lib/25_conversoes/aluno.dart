import 'curso.dart';

class Aluno {
  String nome;
  List<Curso> cursos;
  Aluno({
    required this.nome,
    required this.cursos,
  });

//lembrando que o toString serve para eu conseguir ver no meu print o que
//está sem atribuido, sem ele nesse exemplo viria um:
//Instance of 'Aluno' quando eu printasse

  @override
  String toString() => 'Aluno(nome: $nome, cursos: $cursos)';
}
