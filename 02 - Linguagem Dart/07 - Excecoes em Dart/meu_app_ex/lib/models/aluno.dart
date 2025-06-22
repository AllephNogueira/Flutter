import 'dart:ffi';

class Aluno {
  String _nome = "";
  final List<double> _notas =
      []; // Final: não pode ser setado uma nova lista vindo de fora
  // Se voce reparar notas = [] já tem uma lista criada...

  // Construtor apenas recebendo nome do aluno
  // As notas vao sendo setadas a medida que o usuario vai adicionando
  Aluno(String nome) {
    this._nome = nome;
  }

  // Set e set
  void setNome(String nome) {
    this._nome = nome;
  }

  String getNome() {
    return this._nome;
  }

  // Get e set de listas
  List<double> getNotas() {
    return this._notas;
  }

  // Forma mais simples de adicionar
  void adicionarNotas(double nota) {
    _notas.add(nota);
  }

  double retornaMedia() {
    /*Funcao para retornar a media do aluno
  Media oque é? acumulamos o total das notas
  Pegamos o total das notas e dividimos pela quantidade de notas. */

    // Pega a quantidade de avaliações que o usuario teve

    if (_notas.length <= 0) return 0;

    var totalDeIndices = _notas.length;

    double totalDeNotas = 0.0;

    // Acumula o total das notas
    for (var i = 0; i < _notas.length; i++) {
      totalDeNotas += _notas[i];
    }
    // Divide o total das notas pela quantidade de avaliações
    double media = totalDeNotas / totalDeIndices;

    return media.isNaN
        ? 0
        : media; // Se media for vazio retornamos 0 se nao retornamos a media
  }

  String aprovadoOuReprovado(double media) {
    if (media < 5.0) return "Reprovado";

    return "Aprovado com media de ${media}";
  }
}
