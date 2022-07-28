part of 'pessoa.dart';
//Conseguimos acessar o telefone aqui sem "importar" ele, porque ele utiliza
//os imports que estão no arquivo de "pessoa.dart", já que ele é o principal.

//caso eu deixe de importar o telefone em "pessoa.dart" aqui irá começar a
//dar erro, dizendo que não consegue achar a classe Telefone.

class _Cpf {
  Telefone? telefone;
}
