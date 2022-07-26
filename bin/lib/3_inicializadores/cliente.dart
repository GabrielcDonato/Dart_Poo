class Cliente {
  late final String nome;
  String? idade;
  Cliente({
    required String nomePar,
  });

  Cliente.comNome({required String nomeA}) {
    nome = nomeA;
  }
}

class ClienteLateNull {
  late final String? nomeOpcional;
}



// class Cliente {
//   late final String nome;
  // String name = 'default';

  // Cliente({required String nomePar}) {
    // A palavra reserva this serve para indicar ou referenciar que estou falando da propriedade da
    // minha classe.
    // this.nome = nomePar;
  // }
// }
// class Cliente {
//   String nome;

//   Cliente({required String nomePar}) : nome = nomePar;
// }
