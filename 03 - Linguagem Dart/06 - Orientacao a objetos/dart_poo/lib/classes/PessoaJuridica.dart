import 'package:dart_poo/Enum/tipo_notificacao.dart';
import 'package:dart_poo/classes/Pessoa.dart';

class Pessoajuridica extends Pessoa {
  String _cnpj = "";

  Pessoajuridica(String nome, String sobrenome, String endereco, String cnpj, TipoNotificacao tipoNotificacao)
    : super(nome, sobrenome, endereco, tipoNotificacao) {
    this._cnpj = cnpj;
  }

  void setCnpj(String cnpj) {
    this._cnpj = cnpj;
  }

  String getCnpj() {
    return _cnpj;
  }

  @override
  String toString() {
    // TODO: implement toString
    return {
      "Nome" : super.getNome(),
      "Sobrenome" : super.getSobrenome(),
      "Endereco" : super.getEndereco(),
      "CNPJ" : _cnpj,
      "TipoNotificacao" : super.getTipoNotificacao()
    }.toString();
  }
}
