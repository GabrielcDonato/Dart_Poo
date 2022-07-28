part 'engenheiro.dart';
part 'roberto.dart';

//O part seria eu dizendo pro compilador que esse arquivo é o principal
//onde eu quero ter essas classes, porem estão em outro arquivo.
//seria basicamente um merge, eu digo que alguns arquivos fazem parte (part),
//desse arquivo principal, e eu quero eles aqui, só não estão aqui, para fazer
//uma melhor organização.

//o part tambem funciona como um import, o arquivo engenheiro precisava do
//import da classe Roberto, mas como disse que a classe Roberto faz parte
//desse arquivo principal, a classe Engenheiro consegue ter acesso a classe
//Roberto, já que engenheiro é uma "parte de (part of)  homem.dart"
class Homem {
  var homem = _Roberto();
  _Roberto homem2 = _Roberto();
}
