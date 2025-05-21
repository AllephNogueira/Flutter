import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:meu_app_ex/exception/nome_invalido_exception.dart';
import 'package:meu_app_ex/models/Aluno.dart';
import 'package:meu_app_ex/models/console_utils.dart';

void execute() {
  print("Bem vindo ao sistema de notas!");

  String nome = ConsoleUtils.lerStringComTexto("Digite o nome do aluno: ");
  try {
    if (nome.trim() == "") {
      throw NomeInvalidoException();
    }
  } catch (NomeInvalidoException) {
    print(NomeInvalidoException);
    exit(0);
  } catch (e) {
    exit(0);
    print("Erro: ${e}");
  }

  var aluno = new Aluno(nome); // Pegamos o nome que ja esta preenchido.

  double? nota;
  do {
    nota = ConsoleUtils.lerDoubleComTexto("Digite a nota ou S para sair");
    if (nota != null) {
      aluno.adicionarNotas(nota);
    }
  } while (nota != null);

  print(aluno.getNotas());
  print(aluno.retornaMedia());
  print(aluno.aprovadoOuReprovado(aluno.retornaMedia()));
}
