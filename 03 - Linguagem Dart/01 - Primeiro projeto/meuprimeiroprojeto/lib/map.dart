void map() {
  // Map é usado quando queremos usar algo com chave e valor
  // Aqui temos 2 formas de criar

  // Primeira opcao
  // Aqui estamos dizendo que vamos receber um String(Chave)
  // Valor(Pode ser qualquer tipo)

  // Segunda opcao
  // Estamos recebendo uma chave do tipo String
  // valor do tipo inteiro.

  // Opcao 3
  // Para entender melhor
  // Estamos criando uma tabela de preço para mercado
  // Onde temos chave (arroz) - valor (20 == preço)
  Map<String, dynamic> map1 = Map<String, dynamic>();
  var map = {'zero': 0, 'um': 1, 'dois': 2};
  var map2 = {'Arroz': 20, 'Feijao': 6, 'Alcatra': 36};
  Map<String, dynamic> mapCadastro = {};

  print(map);
  print(map1);
  print(map2);

  // Pegando valor pela chave
  print("${map2["Arroz"]} Reais");

  // Adicionando varios itens ao map
  map2.addAll({'Carne moida': 30, 'Frango': 18});
  print(map2);

  // Testando para ver se esta vazia
  print(map2.isEmpty); // Esta vazia? False
  print(map2.isNotEmpty); // Nao esta vazia? True

  // Quantidade de itens no map
  print(map2.length);

  // Verificar se tem a chave dentro do map
  print(map2.containsKey("Arroz"));

  // Exemplo de cadastro
  mapCadastro.addAll({
    "Nome": "Alleph",
    "Sobrenome": "Nogueira",
    "Idade": DateTime(1994, 03, 22),
  });

  print(mapCadastro);
}
