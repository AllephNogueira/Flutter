import 'package:dart_poo/Enum/tipo_notificacao.dart';

abstract class Pessoa {
  // No dart devemos inicializar os atributos
  // Seja com o null safaty
  // Ou vazio

  // Devemos colocar também o privado na frente para nao poder acessar fora.
  // Diferente de colocar o private na frente
  // Vamos colocar o _ assim ele vai entender que aquele atributo e private
  String? _nome;
  String _sobrenome = "";
  String _endereco = "";
  String _celular = "";
  String _email = "";
  String _token = "";
  TipoNotificacao _tipoNotificacao = TipoNotificacao.NENHUM;

  // Construtor é uma forma de força as pessoas a escrever os dados padroes

  Pessoa(
    String nome,
    String sobrenome,
    String endereco,
    String celular,
    String email, {
    TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM,
  }) {
    _nome = nome;
    _sobrenome = sobrenome;
    _endereco = endereco;
    _tipoNotificacao = tipoNotificacao;
  }

  // Nao é recomendado a gente usar diretamente os atributos
  // É sempre recomendando usar o get e sets para isso
  // Lembrando que o THIS faz referencia com o contexto atual, no caso o this é essa classe.

  void setNome(String nome) {
    // Agora como ja temos o _ não precisamos mais do this, porque ele ja sabe de quem ele esta falando.
    this._nome = nome;
  }

  void setSobrenome(String sobrenome) {
    _sobrenome = sobrenome;
  }

  void setEndereco(String endereco) {
    _endereco = endereco;
  }

  void setCelular(String celular) {
    _celular = celular;
  }

  void setEmail(String email) {
    _email = email;
  }

    void setToken(String token) {
    _token = token;
  }


  void setTipoNotificacao(TipoNotificacao tipoNotificacao) {
    _tipoNotificacao = tipoNotificacao;
  }

  TipoNotificacao getTipoNotificacao() {
    return _tipoNotificacao;
  }

  // Gets funcoes para capturar os dados fora.
  // Como usamos o null safaty la em cima, devemos usar aqui também.
  String? getNome() {
    return _nome;
  }

  String getSobrenome() {
    return _sobrenome;
  }

  String getEndereco() {
    return _endereco;
  }

  String getCelular() {
    return _celular;
  }

  String getEmail() {
    return _email;
  }

  String getToken() {
    return _token;
  }


  // Vamos sobrescrever criando um MAP
  // Com chave e valor
  @override
  String toString() {
    // TODO: implement toString
    return {
      "Nome": getNome(),
      "Sobrenome": getSobrenome(),
      "Endereco": getEndereco(),
      "Celular": getCelular(),
      "Email": getEmail(),
      "TipoNotificacao": getTipoNotificacao(),
    }.toString(); // Nao podemos retornar um MAP aqui, para isso convertemos para toString.
  }
}
