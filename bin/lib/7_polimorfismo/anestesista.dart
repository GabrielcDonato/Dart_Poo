import 'medico.dart';

class Anestesista extends Medico {
  Anestesista(String funcao) : super(funcao: funcao);

  @override
  void operar() {
    // Anestesiar a paciente.
    print('Anestesiar a paciente.');
    print('');
  }
}
