// Tipos de dados de data e hora

void dateTime() {
  // Pegando a data e hora de agora
  DateTime data1 = DateTime.now();

  // Aqui estamos convertendo para uma String
  data1 = DateTime.parse("2022-02-01 00:00:00");

  // Pegando a parte das datas
  print(data1); // Pega toda a data
  print(data1.day); // Dia
  print(data1.month); // Mes
  print(data1.year); // Ano
  print(data1.minute); // Minutos
  print(data1.second); // Segundos

  // Dia da semana
  print(data1.weekday); // Dia da semana

  // Soma de datas
  print(
    data1.add(Duration(days: 2)),
  ); // Nesse exemplo aqui estamos pegando a data e adicionando + 2 dias
  print(data1.subtract(Duration(days: 2))); // Estou removendo 2 dias dela
  print(data1.subtract(Duration(hours: 2))); // Estou removendo 2 dias dela.

  // Comparando as datas também
  var data2 = DateTime.parse("2025-02-01 00:00:00");
  print(data1.isAfter(data2)); // Estou perguntando se data1 é depois de data2 // False
  print(data1.isBefore(data2)); // Data 1 é antes de data2? // True
  print(data1.compareTo(data2)); // Data1 é igual a Data2? False
}
