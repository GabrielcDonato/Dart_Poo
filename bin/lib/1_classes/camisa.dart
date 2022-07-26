// Tudo dentro do dart é classe, o dart é fortemente orientado a objeto.
// porém ele também permite funções e variaveis de nivel superior, que são aquelas
// jogadas pelo arquivo, fora de uma classe. ex:
var a = '';
void b() {}

//Caracteristicas ou Propriedades
//Comportamentos ou Metodos

class Camiseta {
  //variaveis dentro da classe podem ser chamadas de atributos
  // ou propriedades:

  String? tamanho;
  String? _cor;
  String? marca;
  //
  String? alterarCor(String corNova) {
    _cor = corNova;
    return _cor;
  }
  // Modificadores de acesso:

  // Publico Public - é basicamente o que já estamos fazendo
  // Privado Private - utlizamos p _ para deixar privado.
  // Protegido Protected - não utilizamos no dart

  //

  // Getters e Seters:
  // Nesse exemplo eu acabei de fazer um encapsulamento da minha cor
  //Get
  String? get cor => _cor;

  //Set
  set cor(String? cor) {
    // var a = _Camiseta2();
    // _Camiseta2();
    _cor = cor;
    if (cor == 'Verde') {
      throw Exception('Não pode ser verde');
    }
  }

  //Atributo de classe:
  static String nome = "Nike";
  static String _nome2 = "Nike";
  // static const String nome = "Nike";
  //

  //Metodo de classe, os metodos de classe só tem acesso aos atributos de classe,
  //ou seja, eu não poderia recuperar nada além do "nome" nesse caso.
  static String recuperarNome() => nome;
  static String _recuperarNome2() => nome;

  //Outras formas de chamar:

  // static get getNome => nome;
  // static String get getNome => nome;

  //Metodos e atributos statics são unicos para nossa aplicação, ou seja, se alterarmos
  //eles em um ponto da nossa aplicação todos que tiverem pela frente serão alterados.
  //por esse motivo é sempre bom utilizar os statics com const, assim não poderão ser alterados.
  // static const String recuperarNome() => nome;

  // Funções dentro de classes são chamados de metodos:

  String tipoLavagem() {
    if (marca == 'Nike') {
      return 'Não pode lavar na maquina';
    } else {
      return 'Pode lavar na maquina';
    }
  }

  String _tipoLavagem2() {
    if (marca == 'Nike') {
      return 'Não pode lavar na maquina';
    } else {
      return 'Pode lavar na maquina';
    }
  }
}

class _Camiseta2 {
  void recuperarCamiseta() {
    var camiseta = Camiseta();
    camiseta._cor = 'Azul';
  }
}
