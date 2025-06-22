import 'package:dart_poo/Enum/tipo_notificacao.dart';
import 'package:dart_poo/classes/Pessoa.dart';

class PessoaFisica extends Pessoa {
  String _cpf = "";

  // Quando falamos de herança, precisamos no construtor, chamar os atributos da outra classe
  // Dessa forma
  // Repara que estamos pegando apenas o nome e endereco que esta vindo de outra classe
  // Dentro do super é oque vai vir da classe pai

  PessoaFisica(String nome, String sobrenome, String endereco, String cpf, String celular, String email ,{TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM})
    : super(nome, endereco, endereco, celular, email, tipoNotificacao : tipoNotificacao) {
    _cpf = cpf;
  }

  // E aqui vamos ter somente o metodos CPF o resto vamos migrar de la

  void setCpf(String cpf) {
    this._cpf = cpf;
  }

  String getCpf() {
    return _cpf;
  }

  @override
  String toString() {
    // Precisamos usar o Super para acessar os dados da classe pai
    return {
      "Nome": super.getNome(),
      "Sobrenome": super.getSobrenome(),
      "Endereco": super.getEndereco(),
      "CPF": getCpf(),
      "Celular" : super.getCelular(),
      "Email" : super.getEmail(),
      "TipoNotificacao" : super.getTipoNotificacao()
    }.toString();
  }
}
