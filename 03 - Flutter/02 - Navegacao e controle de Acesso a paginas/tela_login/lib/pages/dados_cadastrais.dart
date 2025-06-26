import 'package:flutter/material.dart';
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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

            TextButton(
              onPressed: () {
                print(nomeController.text.toString());
              },
              child: Text("Capturar texto"),
            ),
          ],
        ),
      ),
    );
  }
}
