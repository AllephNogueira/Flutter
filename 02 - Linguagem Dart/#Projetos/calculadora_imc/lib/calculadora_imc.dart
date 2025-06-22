import 'dart:convert';
import 'dart:io';

import 'package:calculadora_imc/classes/Pessoa.dart';

int calculate() {
  return 6 * 7;
}

dynamic perguntarDadosAoUsuario() {
  String? line = "";
  String? nome = "";
  double? peso = 0.0;
  double? altura = 0.0;

  do {
    print("Digite o seu nome:");
    line = stdin.readLineSync(encoding: utf8);
    nome =
        (line ??
        ""); // O operador ?? significa "se for nulo, use o que está depois".

    print("Digite seu peso ex: 82.00:");
    line = stdin.readLineSync(encoding: utf8);
    peso = double.tryParse(
      line ?? "",
    ); // O operador ?? significa "se for nulo, use o que está depois".

    print("Digite sua altura ex: 1.82:");
    line = stdin.readLineSync(encoding: utf8);
    altura = double.tryParse(line ?? "");
  } while (nome.isEmpty || peso == null || altura == null); // Se qualquer condição for falsa ele repete.

  return {"nome": nome, "peso": peso, "altura": altura};
}

void informarGrupoIMC(double numeroIMC) {
  switch (numeroIMC) {
    case < 16:
      print("Magreza grave.");
      break;
    case < 17:
      print("Magraza moderada.");
      break;
    case < 18.5:
      print("Magreza leve.");
      break;
    case < 25:
      print("Saudavel.");
      break;
    case < 30:
      print("Sobrepeso.");
      break;
    case < 35:
      print("Obesidade Grau I");
      break;
    case < 40:
      print("Obesidade Grau II (Severa)");
      break;
    case > 40:
      print("Obesidade Grau III (mórbida)");
      break;
    default:
      print("Operação invalida!");
  }
}
