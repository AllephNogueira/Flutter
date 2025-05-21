import 'package:dart_poo/Enum/tipo_notificacao.dart';
import 'package:dart_poo/classes/Pessoa.dart';
import 'package:dart_poo/service/NotificacaoInterface.dart';
import 'package:dart_poo/service/impl/NotificacaoEmail.dart';
import 'package:dart_poo/service/impl/NotificacaoPush.dart';
import 'package:dart_poo/service/impl/NotificacaoSMS.dart';

class Enviarnotificacao {
  Notificacaointerface? notificacao;

  // Aqui estamos falando que se o tipo da notificacao for email
  // Vamos instanciar o email
  // Se for celular
  // Vamos instanciar o celular

  void notificar(Pessoa pessoa) {
    switch (pessoa.getTipoNotificacao()) {
      case TipoNotificacao.EMAIL:
        notificacao = NotificacaoEmail();
        break;
      case TipoNotificacao.SMS:
        notificacao = Notificacaosms();
        break;
      case TipoNotificacao.PUSH_NOTIFICACAO:
        notificacao = Notificacaopush();
        break;
      default:
        break;
    }
    if (notificacao != null) {
      notificacao!.EnviarNotificacao(pessoa);
    } else {
      print("Pessoa sem tipo de notificação!");
    }
  }
}
