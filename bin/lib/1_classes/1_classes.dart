import 'camisa.dart';

// Uma classe se torna um Objeto a partir
// do momento que eu instancio ela, que eu crio ela;
void main() {
  // Para chamar os metodos e atributos da classe ( Os Statics ), eu não preciso
  // ter uma instância criada, posso chamar diretamente pela classe.
  print(Camiseta.nome);
  print(Camiseta.recuperarNome());
  // print(Camiseta.getNome);

  //Metodos e atributos statics são unicos para nossa aplicação, ou seja, se alterarmos
  //eles em um ponto da nossa aplicação todos que tiverem pela frente serão alterados.
  Camiseta.nome = 'Adidas';
  Camiseta.nome;
  //Em todo lugar que eu chamar Camiseta.nome a partir desse momento será esse valor nome que eu coloquei,
  //antes disso seria o antigo, ou seja teria que fechar e abrir meu app novamente para ser aquela valor antigo
  //antes de eu alterar ele.
  //por esse motivo é sempre bom utilizar os statics com const, assim não poderão ser alterados.
  print(Camiseta.nome);
  print(Camiseta.recuperarNome());

  // Camiseta camisetaNike = Camiseta();
  final camisetaNike = Camiseta();
  camisetaNike.tamanho = 'G';
  camisetaNike.alterarCor('Vermelha');
  camisetaNike.marca = 'Nike';
  camisetaNike.cor; //get
  camisetaNike.cor = 'Laranja'; //set

//good pratice
  print('''
Camiseta Nike
  Tamanho: ${camisetaNike.tamanho}
  Cor: ${camisetaNike.cor}
  Marca: ${camisetaNike.marca}
  tipoLavagem: ${camisetaNike.tipoLavagem()}
  ''');

//bad pratice
  // print(camisetaNike.tamanho);
  // print(camisetaNike.cor);
  // print(camisetaNike.marca);

  final camisetaAdidas = Camiseta();
  camisetaAdidas.tamanho = 'G';
  camisetaAdidas.alterarCor('Preta');
  camisetaAdidas.marca = 'Adidas';
  camisetaAdidas.cor; //get
  camisetaAdidas.cor = 'Azul'; //set
  print("${camisetaAdidas.cor} test");

  print('''
Camiseta Adidas
  Tamanho: ${camisetaAdidas.tamanho}
  Cor: ${camisetaAdidas.cor}
  Marca: ${camisetaAdidas.marca}
  tipoLavagem: ${camisetaAdidas.tipoLavagem()}
  ''');

  print(Camiseta.nome);
}
