import 'dart:convert';

import 'package:http/http.dart' as http;

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

Future<Map<dynamic, dynamic>> retornarCEP(String cep) async {
  var url = Uri.parse("https://viacep.com.br/ws/$cep/json/"); // nossa URL
  var retorno = await http.get(
    url,
  ); // manda ele esperar ate que o get esteja com os dados
  var decodedResponse = jsonDecode(utf8.decode(retorno.bodyBytes)) as Map;

  return decodedResponse; // Retornar o corpo
}
