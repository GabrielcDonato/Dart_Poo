import 'aluno.dart';
import 'curso.dart';

void main() {
  var frutas = [
    Fruta("banana"),
    Fruta("maça"),
    Fruta("abacaxi"),
    Fruta("laranja"),
  ];

  // var sucos = Suco(sabor: frutas[0].nome);
  // .map é o metodo que vc usa para varrer toda estrutura e transformar ela em outra coisa,
  // pode ser utilizado um for tbm.

  // List<Suco> sucos = [];

  // for (var fruta in frutas) {
  //   final suco = Suco(sabor: fruta.nome);
  //   sucos.add(suco);
  // }
  // print(sucos);

//o que o map faz? ele transforma um objeto X em Y basicamente.
//ele vai transformar / mapear algo para mim.

//podemos fazer tanto retornando com arrow function:
  // var sucos = frutas.map((fruta) => Suco(sabor: fruta.nome)).toList();

//ou um corpo de função normal com o return e chaves para indicar o corpo da função.

  var sucos = frutas.map(
    (fruta) {
      return Suco(sabor: fruta.nome);
    },
  );

//  usamos o .toList porque o map nos retorna um Iterable e não uma lista.
//  o tipo de retorno do mapa é iterable.
//  Iterable<T> map<T>(T toElement(E e)) => MappedIterable<E, T>(this, toElement);

  var frutasMap = [
    {"nome": "Abacaxi"},
    {"nome": "Maçã"},
    {"nome": "Laranja"}
  ];

  // var sucos2 = frutasMap
  //     .map((frutaMapa) => Suco(sabor: frutaMapa['nome'] ?? 'Sem Sabor'))
  //     .toList();

  var sucos2 = frutasMap.map((frutaMapa) {
    return Suco(sabor: frutaMapa['nome'] ?? 'Sem sabor');
  });

  print("Iterable: $sucos2");
  print("LISTA: ${sucos2.toList()}");

  var alunoAdf = <String, Object>{
    'nome': 'Gabriel',
    'cursos': [
      {
        'nome': 'Academia do Flutter',
        'descricao': 'Curso feito por Rodrigo Rahman'
      },
      {
        'nome': 'Imersão em Bloc',
        'descricao': 'intensivo em bloc',
      },
      {
        'nome': 'Imersão Códigos Limpos',
        'descricao': 'intensivo em clean code'
      },
    ]
  };

  final cursosMap = alunoAdf['cursos'] as List<Map<String, String>>;

//List<Curso> cursos = cursosMap.map((curso) {
  final cursos = cursosMap.map((curso) {
    var nome = curso['nome'] as String;
    var descricao = curso['descricao'] as String;

    return Curso(nome: nome, descricao: descricao);
  }).toList();

  final nomeAluno = alunoAdf['nome'] as String;

  final aluno = Aluno(nome: nomeAluno, cursos: cursos);
  print(aluno);
}

class Suco {
  String? sabor;
  Suco({required this.sabor});

  @override
  String toString() {
    return "Suco sabor $sabor";
  }
}

class Fruta {
  String nome;
  Fruta(this.nome);
}
