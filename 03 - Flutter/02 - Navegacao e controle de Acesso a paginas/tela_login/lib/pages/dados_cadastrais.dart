import 'package:flutter/material.dart';
import 'package:tela_login/repository/linguagens_repository.dart';
import 'package:tela_login/repository/nivel_repository.dart';
import 'package:tela_login/shared/widgets/text_label.dart';

class DadosCadastrais extends StatefulWidget {
  const DadosCadastrais({super.key});

  @override
  State<DadosCadastrais> createState() => _DadosCadastraisState();
}

class _DadosCadastraisState extends State<DadosCadastrais> {
  TextEditingController nomeController = TextEditingController(text: "");
  var dataNascimentoController = TextEditingController(text: "");
  DateTime? dataDeNascimento;
  var nivelRepository = NivelRepository();
  var niveis = [];
  var nivelSelecionado = "";

  var linguagensRepository = LinguagensRepository();
  var linguagens = [];
  var linguagensSelecionadas = [];

  double salarioEscolhido = 0.0;

  @override
  void initState() {
    niveis = nivelRepository.retornaNiveis();
    linguagens = linguagensRepository.retornaLinguagens();
    super.initState();
  }

  Text returnText(String texto) {
    return Text(
      texto,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cadastro")),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: ListView(
          children: [
            returnText("Nome"),
            TextField(controller: nomeController),
            SizedBox(height: 10),

            //returnText("Data de nascimento"),
            TextLabel(texto: "Data de nascimento"),
            TextField(
              controller: dataNascimentoController,
              readOnly: true,
              onTap: () async {
                var dataNascimentoUsuario = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1994, 5, 20),
                  lastDate: DateTime(2030, 10, 23),
                );
                if (dataNascimentoUsuario != null) {
                  dataDeNascimento = dataNascimentoUsuario;
                  var dia = dataDeNascimento!.day.toString();
                  var mes = dataDeNascimento!.month.toString();
                  var ano = dataDeNascimento!.year.toString();
                  dataNascimentoController.text = "$dia - $mes - $ano";
                } else {
                  dataNascimentoController.text = "Usuario nao informou a data";
                }
              },
            ),
            SizedBox(height: 10),
            TextLabel(texto: "Nivel de experiência"),

            Column(
              children: niveis.map((nivel) {
                return RadioListTile(
                  title: Text(nivel.toString()),
                  selected: nivel == nivelSelecionado,
                  value: nivel.toString(), // valor único para cada opção
                  groupValue: nivelSelecionado, // valor atualmente selecionado
                  onChanged: (value) {
                    setState(() {
                      nivelSelecionado = value.toString();
                    });
                    print(value);
                  },
                );
              }).toList(),
            ),

            TextLabel(texto: "Linaguagens preferidas"),

            Column(
              children: linguagens
                  .map(
                    (item) => CheckboxListTile(
                      dense: true,
                      title: Text(item.toString()),
                      value: linguagensSelecionadas.contains(
                        item,
                      ), // Se o item tiver na lista, vamos deixar ele marcado, se nao remove..
                      onChanged: (bool? value) {
                        if (value!) {
                          setState(() {
                            linguagensSelecionadas.add(item);
                            print(linguagensSelecionadas);
                          });
                        } else {
                          setState(() {
                            linguagensSelecionadas.remove(item);
                          });
                        }
                      },
                    ),
                  )
                  .toList(),
            ),

            /* Estamos fazendo um Slide para o usuario selecionar a sua pretenção salarial
            Ela vai de 0 a 9500
            value - vai ser o valor que vai ficar já pré configurado

            Precisamos passar um double com o value que já vamos deixar pré configurado

            Agora vamos colocar o value, como salario escolhido (Deixamos ele definido como 0)
            */
            TextLabel(
              texto:
                  "Pretenção salarial R\$ ${salarioEscolhido.toStringAsFixed(2)}",
            ),

            Slider(
              min: 0,
              max: 9500,
              value: salarioEscolhido,
              onChanged: (double value) {
                setState(() {
                  salarioEscolhido = value; // Dessa forma vai ser dinamico
                });
              },
            ),

            TextButton(
              onPressed: () {
                print(nomeController.text.toString());
              },
              child: Text("Salvar"),
            ),
          ],
        ),
      ),
    );
  }
}
