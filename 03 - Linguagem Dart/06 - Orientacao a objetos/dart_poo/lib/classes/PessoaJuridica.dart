import 'package:dart_poo/Enum/tipo_notificacao.dart';
import 'package:dart_poo/classes/Pessoa.dart';

class Pessoajuridica extends Pessoa {
  String _cnpj = "";

  Pessoajuridica(String nome, String sobrenome, String endereco, String celular,  String email, String cnpj, {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM})
    : super(nome, sobrenome, endereco, celular, email, tipoNotificacao : tipoNotificacao) {
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
      "CNPJ" : getCnpj(),
      "Celular" : super.getCelular(),
      "Email" : super.getEmail(),
      "TipoNotificacao" : super.getTipoNotificacao()
    }.toString();
  }
}
