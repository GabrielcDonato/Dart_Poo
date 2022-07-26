import 'anestesista.dart';

class ResidenteAnestesista extends Anestesista {
  ResidenteAnestesista() : super("Residente Anestesista");

  @override
  void operar() {
    // Preparar e esterelizar os equipamentos.
    print('Preparar e esterelizar os equipamentos.');
    print('chamando super abaixo:');
    print('');
    print(
        super.funcao); // chamando o super aqui ele chama Residente Anestesista
    // e não anestesista por causa que eu atribui ao super o Residente Anestesista para printar o
    // nome
    super.operar();

    //super.operar(); // chamando assim com o super ele ira trazer o metodo dentro
    //de anestesista.

//     class Anestesista extends Medico {
//   Anestesista() : super(funcao: "Anestesista");

//   @override
//   void operar() {
    // Anestesiar a paciente.
//     print('Anestesiar a paciente.');
//     print('');
//   }
// }
  }
}
