class Pessoa {
  // No dart devemos inicializar os atributos
  // Seja com o null safaty
  // Ou vazio

  // Devemos colocar também o privado na frente para nao poder acessar fora.
  // Diferente de colocar o private na frente
  // Vamos colocar o _ assim ele vai entender que aquele atributo e private
  String? _nome;
  String _sobrenome = "";
  String _endereco = "";

  // Construtor é uma forma de força as pessoas a escrever os dados padroes

  Pessoa(String nome, String sobrenome, String endereco) {
    _nome = nome;
    _sobrenome = sobrenome;
    _endereco = endereco;
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

  // Vamos sobrescrever criando um MAP
  // Com chave e valor
  @override
  String toString() {
    // TODO: implement toString
    return {
      "Nome": _nome,
      "Sobrenome": _sobrenome,
      "Endereco": _endereco,
    }.toString(); // Nao podemos retornar um MAP aqui, para isso convertemos para toString.
  }
}
