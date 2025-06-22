import 'package:dart_poo/classes/Pessoa.dart';
import 'package:dart_poo/service/NotificacaoInterface.dart';

class Notificacaosms implements Notificacaointerface {

  @override
  void EnviarNotificacao(Pessoa pessoa) {
    print("Enviando SMS para : ${pessoa.getNome()}");
  }

}