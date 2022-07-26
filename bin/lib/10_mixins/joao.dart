import 'artista.dart';
import 'cantar.dart';
import 'dancar.dart';

// Eu posso criar mixins tanto com a palavra reserva mixin, ou
// sendo uma class abstrata, mas se for um mixin ele não pode ser extendido
// diretamente. ex:

// class TesteMixin extends Dancar {} // Error: Classes can only extend other classes.

// Caso aconteça de passar um metodo com o mesmo nome, o ultimo a ser extendido
// vai sobrescrever o anterior, nesse caso seria o cantar.
class Joao extends Artista with Dancar, Cantar {}

class Gabriel extends Artista with Dancar implements ArtistaInterface {}

class Lucas extends Artista with Dancar {}

class Bruno with Falar {}

abstract class ArtistaInterface {}
