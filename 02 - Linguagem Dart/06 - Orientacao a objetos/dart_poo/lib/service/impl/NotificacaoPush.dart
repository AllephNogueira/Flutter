import 'package:dart_poo/classes/Pessoa.dart';
import 'package:dart_poo/service/NotificacaoInterface.dart';

class Notificacaopush implements Notificacaointerface{
  @override
  void EnviarNotificacao(Pessoa pessoa) {
    print("Enviando PUSH para : ${pessoa.getNome()}");
  }
}