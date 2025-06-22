class NomeInvalidoException implements Exception {
  // Criamos nossos metodos de exceções
  String erro() => "Nome invalido";

  @override
  String toString() {
    // TODO: implement toString
    return "NomeInvalidoException - ${erro()}";
  }
}
