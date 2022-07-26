import 'enviar_email.dart';

void main() {
  var enviarEmail = EnviarEmail();
  enviarEmail.enviar("gabriel@gmail.com");

  //Vou chamar assim???
  enviarEmail.call('email');

  //Não será dessa forma apenas:
  enviarEmail("gabriel@gmail.com");
}
