import 'package:dart_poo/classes/Pessoa.dart';

void main(List<String> arguments) {
  // NAO RECOMENDADO
  // Isso fere os conceitos do POO
  //p1.sobrenome = "Nogueira";
  //p1.endereco = "Travessa Duarte Branco";

  // RECOMENDADO COM GET E SET
  // Com construtor
  var p1 = new Pessoa("Alleph", "Nogueira", "Travessa Duarte Branco");
  // Sem construtor
    //var p1 = new Pessoa("");
    //p1.setNome("Alleph");
    //p1.setSobrenome("Nogueira");
    //p1.setEndereco("Travessa Duarte Branco 26");

  print(p1);
}
