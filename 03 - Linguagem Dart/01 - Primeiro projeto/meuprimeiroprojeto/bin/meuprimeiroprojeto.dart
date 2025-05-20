import 'package:meuprimeiroprojeto/meuprimeiroprojeto.dart'
    as meuprimeiroprojeto;

void main(List<String> arguments) {
  print('Hello world: ${meuprimeiroprojeto.calculate()}!');

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
}
