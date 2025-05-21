import 'package:dart_poo/Enum/tipo_notificacao.dart';
import 'package:dart_poo/classes/Pessoa.dart';
import 'package:dart_poo/classes/PessoaFisica.dart';
import 'package:dart_poo/classes/PessoaJuridica.dart';

void main(List<String> arguments) {
  // NAO RECOMENDADO
  // Isso fere os conceitos do POO
  //p1.sobrenome = "Nogueira";
  //p1.endereco = "Travessa Duarte Branco";

  // RECOMENDADO COM GET E SET
  // Com construtor
  ///var p1 = new Pessoa("Alleph", "Nogueira", "Travessa Duarte Branco");
  // Sem construtor
  //var p1 = new Pessoa("");
  //p1.setNome("Alleph");
  //p1.setSobrenome("Nogueira");
  //p1.setEndereco("Travessa Duarte Branco 26");

  //print(p1);

  var usuarioFisico = new PessoaFisica(
    "Alleph",
    "Nogueira",
    "Duarte Branco 26",
    "15679025701",
    TipoNotificacao.EMAIL,
  );

  var usuarioFisico2 = new PessoaFisica(
    "Alleph",
    "Nogueira",
    "Duarte Branco 26",
    "15679025701",
    TipoNotificacao.SMS,
  );

  var pessoaJuridica = new Pessoajuridica(
    "AteliPet",
    "Pet",
    "sagyasd",
    "000000000",
    TipoNotificacao.PUSH_NOTIFICACAO,
  );
  
}
