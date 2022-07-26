import 'anestesista.dart';
import 'medico.dart';
import 'obstetra.dart';
import 'pediatra.dart';
import 'residente_anestesia.dart';

void main() {
  // Parto!!!!
  var medicos = <Medico>[
    ResidenteAnestesista(),
    Anestesista("Anestesista"),
    Obstetra(),
    Pediatra(),
  ];

  for (var medico in medicos) {
    print(medico.funcao);
    medico.operar();
  }
}
