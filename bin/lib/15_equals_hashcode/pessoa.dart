/*
"estado da minha classe/instancia"
  Pessoa
    nome: "Gabriel"
    email: "gabriel@gmail.com"

estado diferente:
  Pessoa
    nome: "Donato"
    email: "donato@gmail.com"
*/

class Pessoa {
  String nome;
  String email;
  String telefone;
  Pessoa({
    required this.nome,
    required this.email,
    required this.telefone,
  });
//this sozinho estou falando da minha instancia local
  // @override
  // bool operator ==(Object other) {
  //   if (identical(this, other)) return true;

  //   if (other is Pessoa) {
  //     if (other.nome == nome) {
  //       if (other.email == email) {
  //         return true;
  //       } else {
  //         return false;
  //       }
  //     } else {
  //       return false;
  //     }
  //   } else {
  //     return false;
  //   }
  // }

//Fazendo de um jeito mais simplificado:

  bool isEquals = false;

  // @override
  // bool operator ==(Object other) {
  //   if (identical(this, other)) return true;

  //   if (other is Pessoa) {
  //     if (other.nome == nome) {
  //       if (other.email == email) {
  //         isEquals = true;
  //       }
  //     }
  //   }
  //   return isEquals;
  // }

//Fazendo de um jeito mais simplificado ainda:

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Pessoa &&
        other.nome == nome &&
        other.email == email &&
        other.telefone == telefone;
  }

  //Sempre que eu implementar o Equals eu tambem preciso implementar o
  //hashCode, porque eles devem ser iguais. Caso eu não implemente o hashCode
  //minha comparação vai falar que é igual mas os hashCodes seram diferentes.

  //um não vive sem o outro, se você alterar o hashCode tem que alterar o
  //equals tbm e se você alterar o equals tem que alterar o hashCode tbm.

  @override
  int get hashCode => nome.hashCode ^ email.hashCode ^ telefone.hashCode;

  @override
  String toString() {
    return """
  Pessoa:
    nome: $nome
    email: $email
    telefone: $telefone
""";
  }
}
