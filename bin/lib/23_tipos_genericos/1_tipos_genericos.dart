void main() {
  List numeros = [1, 2, 3, 4];

  List<int> listaNumerosGenerics = [1, 2, 3, 4];
  listaNumerosGenerics.add(1);

  Map<String, int> mapa = {};

  final caixaDynamic = Caixa();

  final bola = Bola();
  final boneca = Boneca();

  final caixaDeBolas = Caixa<Bola>();
  caixaDeBolas.adicionar(bola);
  caixaDeBolas.adicionar(Bola());
  caixaDeBolas.getItem();
  print(caixaDeBolas.alturaItem());

  final caixaDeBonecas = Caixa<Boneca>();
  caixaDeBonecas.adicionar(boneca);
  caixaDeBonecas.adicionar(Boneca());
  Boneca? itemBoneca = caixaDeBonecas.getItem();
  print(caixaDeBonecas.alturaItem());

  // final caixaComputador = Caixa<Computador>(); // da erro pq a classe computador
  // não é filha da classe Pai Item, então minha class Caixa só pode ter filhos
  // que herdam de Item, por causa de eu obrigar "Caixa<I extends Item>.

  final caixa = Caixa2<Bola, Boneca>();
  caixa.adicionar(bola);
  caixa.adicionar(Bola());
  caixa.getItem();

}

// A minha Caixa pode ter qualquer coisa, desde que seja filho da classe Item
class Caixa<I extends Item> {
  I? _item;
  void adicionar(I item) {
    _item = item;
  }

  I? getItem() {
    return _item;
  }

  double alturaItem() {
    return _item?.altura() ?? 0;
  }
}
// class Caixa<I> {
//   I? _item;
//   void adicionar(I item) {
//     _item = item;
//   }

//   I? getItem() {
//     return _item;
//   }
// }

class Caixa2<I, U> {
  I? _item;
  void adicionar(I item) {
    _item = item;
  }

  I? getItem() {
    return _item;
  }
}

abstract class Item {
  double altura();
}

class Bola extends Item {
  @override
  double altura() {
    return 20.0;
    // throw 'deu erro';
  }
}

class Boneca extends Item {
  @override
  double altura() {
    return 60.0;
  }
}

class Telefone extends Item {
  @override
  double altura() {
    return 80.0;
  }
}

class Computador {}

// class Caixa {
//   dynamic item = [];
//   void adicionar(Bola bola) {
//     item =bola;
//   }

//   void adicionarBoneca(Boneca boneca) {
//     item = boneca;
//   }

//   dynamic getItem() {
//     return item;
//   }
// }
// class Caixa {
//   List<dynamic> items = [];
//   void adicionar(Bola bola) {
//     items.add(bola);
//   }

//   void adicionarBoneca(Boneca boneca) {
//     items.add(boneca);
//   }

//   List<dynamic> getItems() {
//     return items;
//   }
// }


