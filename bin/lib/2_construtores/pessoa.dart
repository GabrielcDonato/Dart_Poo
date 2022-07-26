class Pessoa {
  String? nome;
  int? idade;
  String? sexo;

  //construtor default todas as classes tem, quando ele vem "vazio".
  //automaticamente
  // Pessoa();

//posicional obrigatorio
  // Pessoa(String nomeConstruct, int idadeConstruct, String sexoConstruct) {
  //   nome = nomeConstruct;
  //   idade = idadeConstruct;
  //   sexo = sexoConstruct;
  // }

//posicional opcionais
  // Pessoa([String? nomeConstruct, int? idadeConstruct, String? sexoConstruct]) {
  //   nome = nomeConstruct;
  //   idade = idadeConstruct;
  //   sexo = sexoConstruct;
  // }

//nomeado opcionais
  // Pessoa({String? nomeConstruct, int? idadeConstruct, String? sexoConstruct}) {
  //   nome = nomeConstruct;
  //   idade = idadeConstruct;
  //   sexo = sexoConstruct;
  // }

//nomeado obrigatorio
  // Pessoa(
  //     {required nomeConstruct,
  //     required idadeConstruct,
  //     required sexoConstruct}) {
  //   nome = nomeConstruct;
  //   idade = idadeConstruct;
  //   sexo = sexoConstruct;
  // }
  //para não ter que referenciar nossos atributos da classe no corpo do construtor
  //podemos utilizar a palavra reserva this, para indicar que estou falando dos meus atributos.
  Pessoa({
    required this.nome,
    required this.idade,
    required this.sexo,
  });

  //Construtor nomeado, ou sobrecarga de construtor, para criar mais de um
  //construtor devemos colocar .nome na frente dele.
  Pessoa.semNome({
    required this.idade,
    required this.sexo,
  });
  Pessoa.empty();

  // Construtor do tipo factory
  // é utilizado quando temos uma regra de negocio
  // para criação da nossa classe!!!!
  factory Pessoa.fabrica(String nomeConstr) {
    var nome = nomeConstr + '_Fabrica';
    var pessoa = Pessoa.empty();
    return pessoa;
  }
}
