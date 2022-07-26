import 'medico.dart';

class Obstetra extends Medico {
  Obstetra() : super(funcao: "Obstetra");

  @override
  void operar() {
    // Preparar o paciente
    print('Preparar o paciente.');

    print('');

    // Nascimento do bebe.
    print('Nascimento do bebe.');
  }
}
