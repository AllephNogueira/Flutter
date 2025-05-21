double calcularDesconto(double valor, double desconto, bool percentual) {
  if (valor <= 0) {
    throw ArgumentError("O valor do produto não pode ser zero.");
  }

  if (desconto <= 0) {
    throw ArgumentError("O desconto não pode ser 0");
  }

  if (percentual) {
    // Imagina que estamos dando desconto
    // Imagine a situação
    // Produto 100R$ - Desconto 20%
    return valor - ((valor * desconto) / 100); // Desconto 20 reais
    // Ai seria 100 - 20 = 80 reais
    // O novo valor seria 80 reais.
  }

  return valor - desconto;
}

String retornaString() {
  return "Alleph";
}

String convertUpperCase(String texto) {
  return texto.toUpperCase();
}
