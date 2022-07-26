// CONCEITO DE ASSOCIAÇÃO

// Uma forma mais fácil de pensar em ASSOCIAÇÃO seria se perguntando, uma pessoa tem um nome?
// tem um endereço? tem uma idade?

// Diferença entre composição e agregação
// Uma pessoa pode "existir" sem um CPF? não, então nesse caso será uma composição.
// Uma pessoa pode "existir" sem um TELEFONE? nesse caso sim, nosso sistema não
// obriga a pessoa a ter um telefone, então é agregação.

// Composição é quando a coisa é obrigatoria, uma pessoa não pode exister sem
// um endereço e cpf por exemplo.

class Funcionario {
  String? name;
  // Composição
  // Quando um atributo de associação é obrigatorio
  // Nós estamos falando de COMPOSIÇÃO !!!
  // Nesse caso estou falando que toda pessoa tem que ter um endereço
  // então faço uma associação da classe pessoa com a classe endereço sendo obrigatoria.
  Funcao funcao = Funcao();
  Endereco endereco = Endereco();
  DocumentoDeIdentificacao documentoDeIdentificacao =
      DocumentoDeIdentificacao(numero: '1231-213213-42-29');

  // Agregação
  // Quando um atributo de associação não é obrigatorio
  // Nós estamos falando de agregação!!!
  Telefone? telefone;
}

class Endereco {}

class Funcao {}

class Telefone {}

class DocumentoDeIdentificacao {
  String numero;
  DocumentoDeIdentificacao({
    required this.numero,
  });
}
