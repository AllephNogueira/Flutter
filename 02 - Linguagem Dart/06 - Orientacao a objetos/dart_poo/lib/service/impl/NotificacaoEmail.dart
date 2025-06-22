import 'package:dart_poo/classes/Pessoa.dart';
import 'package:dart_poo/service/NotificacaoInterface.dart';

class NotificacaoEmail implements Notificacaointerface{
  @override
  void EnviarNotificacao(Pessoa pessoa) {
    print("Enviando Email para : ${pessoa.getNome()}");
  }
}