int calculate() {
  return 6 * 7;
}

void funcaoString() {
  String nome = "Alleph";
  var sobrenome = "Nogueira";

  // Funcao para verificar se o texto esta vazio
  print(nome.isEmpty); // FALSO Pq o tem texto. - FALSE
  print("".isEmpty); // AQUI ESTA VAZIO - TRUE
  print(" ".isEmpty); // AQUI NAO ESTA VAZIO TEMOS UM ESPAÇO - FALSE

  // Obeter a quantidade de letras dentro da String
  print(nome.length); // 6

  // Converter para maisuculo e minusculo
  print(nome.toLowerCase()); // alleph
  print(nome.toUpperCase()); // ALLEPH

  // Verificar se existe x nome dentro da String
  print(nome.contains("PH")); // FALSO
  // Aqui estamos verificando se tem o PH, mas antes de verificar estamos passando ele para minusculo.
  print(nome.contains("PH".toLowerCase())); // TRUE

  // Substring
  // Pegando ate uma parte da string
  String frase = "Nao fui trabalhar hoje";
  print(
    frase.substring(1, 10),
  ); // Pepando do indice 1 ate o 10 * Lembrar que comeca do 0 *
  print(frase.substring(5)); // Pegando do 5 ate o final

  // Obtem a posicao de um texto em uma String
  // Imagina que nossa frase seja um array
  print(frase.indexOf("Nao")); // Não é o indice 0
  print(frase.indexOf("f")); // F esta no indice 4
  print(frase.indexOf("h")); // H é palavra de indice 14
  print(frase.indexOf("x")); // Quando nao temos a letra ele vai dar o -1
  // *** ATENÇÃO Se voce coloca uma palavra ele ver o indice daquela palavra
  // Se voce coloca uma letra ele ver o indice da letra
  // Uma frase com 5 palavras tem 5 indices
  // Uma frase com varias palavras tem varios indices.

  // Replace
  print(
    frase.replaceAll("Nao", ""),
  ); // Onde tiver a palavra NAO ele vai apagar.
  print(frase.replaceAll("Nao", "@"));
  print(
    frase.toLowerCase().replaceAll("nao", "Convertido"),
  ); // Jogando tudo para minusculo e depois convertendo.

  // Split
  // Quebrar uma string em pedaços
  print(
    frase.split(" "),
  ); // Todo o locais que tiver um espaço, vamos quebrar e retonrar um array

  // TRIM
  // Remover espaços
  // Lembrar que ele remove os espaços antes e depois só.
  print(" Alleph  Nogueira".trim()); // Retirando todos os espaços.
  print(" Alleph  Nogueira".trimRight()); // Removendo a direita
  print(" Alleph  Nogueira".trimLeft()); // Removendo a esquerda.
}

void funcoesBool() {
  var varTrue = true;
  bool varFalse = false;

  // Para declarar uma variavel como false, basta apenas iniciar ela
  // Ela mesmo já entende que isso é falso
  bool variavel;

  // Comparações com varivel bool
  bool comparar = 1994 == 1995;
  print(comparar);

  // Exemplo de comparação para verificar se o usuario é maior de idade
  // Pega ano que estamos
  // subtrai com o ano de nascimento
  // EX 31
  // Verifica se o 31 e maior ou igual a 18
  bool maior = (2025 - 1994) >= 18;
  if (maior) {
    print("Usuario maior de idade");
  }
}

void listas() {
  // Iniciando uma lista de String vazia
  List<String> listaString = [];

  var list = [10, 20, 30, 40, 110, 120]; // Lista podendo usar somente numeros
  List lstDynamic = []; // Lista dinamica
  // Lista dinamica, podemos colocar qualquer tipo de informacao
  // Podemos usar inteiro, junto com string..

  // Pegando o tamanho da lista
  print("Tamanho da lista: ${listaString.length}");
  print("Tamanho da lista: ${list.length}");
  print("Tamanho da lista: ${lstDynamic.length}");

  // Adicionando na lista
  listaString.add("Alleph"); // So podemos adicionar Strings
  list.add(1994); // So podemos adicionar numeros
  lstDynamic.add(
    "Alleph Nogueira",
  ); // Podemos adicionar qualquer tipo de dados.
  lstDynamic.add(1994);

  // Verificando se a lista esta vazia ou nao
  print(listaString.isEmpty); // Falso
  print(
    listaString.isNotEmpty,
  ); // Aqui perguntamos: A lista nao esta vazia? // TRUE

  // Se um valor contem na lista
  print(list.contains(10)); // True pq tem 10 na lista.

  // Funcao where na lista
  // Vamos percorrer a lista e vamos retonrar os itens que sao maior que x e menor que y
  // X seria os elementos da lista.
  print(
    list.where(
      (elementosDaLista) => elementosDaLista > 9 && elementosDaLista < 99,
    ),
  );

  // Reverse = invertendo a lista
  print(list);
  print(list.reversed);

  // Atenção as listas tem varias funcionalidades, podemos estudar mais sobre.
}
