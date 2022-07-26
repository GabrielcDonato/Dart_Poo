import 'medico.dart';

class Pediatra extends Medico {
  Pediatra() : super(funcao: "Pediatra");

  @override
  void operar() {
    // Examinar a criaça no pos parto.
    print('Examinar a criaça no pos parto.');
    print('');
  }
}
