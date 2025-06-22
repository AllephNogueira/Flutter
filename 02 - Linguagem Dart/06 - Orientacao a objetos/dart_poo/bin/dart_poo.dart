import 'package:dart_poo/Enum/tipo_notificacao.dart';
import 'package:dart_poo/classes/Pessoa.dart';
import 'package:dart_poo/classes/PessoaFisica.dart';
import 'package:dart_poo/classes/PessoaJuridica.dart';
import 'package:dart_poo/service/EnviarNotificacao.dart';

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
    "121123123123",
    "hashdhasd@",
    tipoNotificacao: TipoNotificacao.PUSH_NOTIFICACAO,
  );

  var usuarioFisico2 = new PessoaFisica(
    "Alleph",
    "Nogueira",
    "Duarte Branco 26",
    "15679025701",
    "121123123123",
    "hashdhasd@",
  );

  var pessoaJuridica = new Pessoajuridica(
    "AteliPet",
    "Pet",
    "sagyasd",
    "000000000",
    "121123123123",
    "hashdhasd@",
    tipoNotificacao: TipoNotificacao.SMS,
  );

  Enviarnotificacao enviarNotificacao = Enviarnotificacao();
  enviarNotificacao.notificar(usuarioFisico2);
  enviarNotificacao.notificar(usuarioFisico);
  enviarNotificacao.notificar(pessoaJuridica);
}
