import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  // Criando uma funçao para leitura do console
  static String lerStringComTexto(String texto) {
    // Primeiro ele ler o texto que esta no terminal
    print(texto);
    // Depois ele imprime o texto e chama a funcao que vai ler o console.
    return lerString();
  }

  static String lerString() {
    // Aqui precisamos fazer uma verificação para nao retornar um NULL
    // Vamos pegar oque o usuario digitou ou um vazio.
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  // Simulando oque faria um tryParse
  static double? lerDouble() {
    var valor = lerString();

    try {
      return double.parse(valor);
    } catch (e) {
      return null;
    }
  }

  // Criando mais uma funçao só que com texto
  // Simulando oque faria um tryParse
  static double? lerDoubleComTexto(String texto) {
    print(texto);
    return lerDouble();
  }


}
