class Produto {
  final int? _id;
  final String? nome;
  final double? _preco;

  // Produto({required int id, required this.nome, required double preco})
  //antes de chegarmos no corpo do construtor {} a nossa classe já foi iniciliazada
  // {
  //   _id = id;
  //   _preco = preco;
  // }
  Produto({required int id, required this.nome, double preco = 1.0})
      : _id = id,
        _preco = preco
  //eu tenho até aqui para inicializar minha classe quando ela passa pelos :
  //e chega no corpo do construtor {} não será mais possivel.
  {
    print("$_id printando super");
    print("$_preco teste");
  }

  factory Produto.fabrica({
    required int idFactory,
    required String nomeFactory,
    required double precoFactory,
  }) {
    //chamo um outro construtor para fazer a criação da nossa classe
    return Produto(id: idFactory, nome: nomeFactory, preco: precoFactory);
  }
}

void main() {
  var a = Produto(id: 1, nome: 'nome');
  print(a._preco);
}
