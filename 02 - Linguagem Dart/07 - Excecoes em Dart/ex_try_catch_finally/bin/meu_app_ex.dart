import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:meu_app_ex/meu_app_ex.dart' as meu_app_ex;

void main(List<String> arguments) {
  // Ler o console do usuario
  print("Digite um numero: ");
  var line = stdin.readLineSync(encoding: utf8);
  try {
    // TENTE CONVERTER PARA UM DOUBLE

    // Como estamos fazendo aqui: Line e diferente de null e nao esta vazio?
    // Se a condição for verdade usamos o proprio line para colocar dentro da variavel
    // Se a condição for falsa colocamos o "0"
    double numero = double.parse(
      line != null && line.isNotEmpty ? line : "0",
    ); // Convertendo para um double

    print(numero);
  } catch (e) {
    // SE NAO CONSEGUIR CAIMOS AQUI.
    print("Número invalido: $line ");
  } finally {
    print("Executando independente se deu erro ou não");
  }
}
