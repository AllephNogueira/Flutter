import 'package:meuprimeiroprojeto/meuprimeiroprojeto.dart'
    as meuprimeiroprojeto;

import 'package:meuprimeiroprojeto/map.dart'
    as map;

void main(List<String> arguments) {
  print('Hello world: ${meuprimeiroprojeto.calculate()}!');

  print("\n\n EXEMPLOS DE FUNCOES COM STRINGS \n\n");

  meuprimeiroprojeto.funcaoString();

  print("\n\n EXEMPLOS DE FUNCOES COM BOOLEANAS \n\n");
  meuprimeiroprojeto.funcoesBool();

  print("\n\n EXEMPLPOS DE LISTAS \n\n");
  meuprimeiroprojeto.listas();


  print("\n\n EXEMPLPOS DE MAP \n\n");
  map.map();

  print("\n\n\n EXEMPLOS DE FUNCOES A CIMA \n\n\n");

  // Duas formas de declarar variaveis em Dart
  // Explicitas
  String nome = "Alleph";
  // Implicitas
  var nome2 = "Alleph2";

  // Iniciando variaveis sem nenhuma informação
  String nome3;

  // Criando uma lista

  // Aqui criamos uma List de Strings, então podemos adicionar somente Strings
  List<String> minhaLista = [];
  minhaLista.add("Alleph");
  minhaLista.add("Fernanda");

  var lista2 =
      []; // Dessa forma é dinamica, entao podemos adicionar varios itens com formatos diferentes
  lista2.add(1994);
  lista2.add("Alleph");

  print(nome2);

  /// TIPOS DE DADOS DE STRINGS ///
  String texto = "DIO STRINGS";
  var texto2 = "DIO STRINGS 2";

  print(texto);
}
