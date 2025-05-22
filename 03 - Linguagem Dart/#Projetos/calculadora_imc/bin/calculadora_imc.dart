import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:calculadora_imc/calculadora_imc.dart' as calculadora_imc;
import 'package:calculadora_imc/classes/Pessoa.dart';

void main(List<String> arguments) {

  var dados = calculadora_imc.perguntarDadosAoUsuario();


  var usuario1 = Pessoa(dados['nome'], dados['peso'], dados['altura']);

  double numeroIMC = usuario1.calcularIMC();
  print(numeroIMC);

  calculadora_imc.informarGrupoIMC(numeroIMC);
}
