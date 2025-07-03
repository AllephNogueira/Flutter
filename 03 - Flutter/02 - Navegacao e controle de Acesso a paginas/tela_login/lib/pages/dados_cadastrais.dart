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

  bool salvando = false;

  int tempoExperiencia = 0;
  List<DropdownMenuItem<int>> returnItens(int quantidadeMaxima) {
    var itens = <DropdownMenuItem<int>>[];

    for (var i = 0; i < quantidadeMaxima; i++) {
      // Vamos varrer a lista.
      // Adicionado os itens na lista
      //Atenção estamos criando uma lista de componentes, então ele vai retornar o DropDownButton
      itens.add(DropdownMenuItem(value: i, child: Text(i.toString())));
    }

    return itens;
  }

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
        child: salvando
            ? Center(child: CircularProgressIndicator())
            : ListView(
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
                        dataNascimentoController.text =
                            "Usuario nao informou a data";
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
                        groupValue:
                            nivelSelecionado, // valor atualmente selecionado
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

                  /* Drop Down button 
            Vamos precisar um array de items:
            value é o item que ele selecionou

            EXEMPLO:
              Repara que nessa lista vamos ter o valor Alleph
              Quando selecionar o valor Alleph, vamos querer que o Alleph seja igual a 1

              Ai vamos colocar dentro da variavel 1

            Mas, agora vamos seguir a ordem correta, aqui o usuario vai escolher quando tempo de experiência
            Se o usuario escolher 1 ano, o valor que vamos armazenar vai ser 1.
            2 anos - valor armazenado 2.
            */
                  TextLabel(texto: "Tempo de experiência"),

                  DropdownButton(
                    value:
                        tempoExperiencia, // Aqui é o valor que ele vai exibir.
                    isExpanded: true, // Ocupar até o final
                    items: returnItens(50),
                    onChanged: (value) {
                      if (value != null) {
                        setState(() {
                          tempoExperiencia = value;
                        });
                      }
                    },
                  ),

                  /* Estamos fazendo um Slide para o usuario selecionar a sua pretenção salarial
            Ela vai de 0 a 9500
            value - vai ser o valor que vai ficar já pré configurado

            Precisamos passar um double com o value que já vamos deixar pré configurado

            Agora vamos colocar o value, como salario escolhido (Deixamos ele definido como 0)
            */
                  TextLabel(
                    texto:
                        "Pretenção salarial R\$ ${salarioEscolhido.round().toString()}",
                  ),

                  Slider(
                    min: 0,
                    max: 9500,
                    value: salarioEscolhido,
                    onChanged: (double value) {
                      setState(() {
                        salarioEscolhido =
                            value; // Dessa forma vai ser dinamico
                      });
                    },
                  ),

                  TextButton(
                    onPressed: () {
                      if (nomeController.text.toString().trim().length < 3) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("O nome deve ser preenchdio")),
                        );
                        return;
                      }
                      if (dataDeNascimento == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Selecione a data de nascimento"),
                          ),
                        );
                        return;
                      }
                      if (nivelSelecionado.trim() == "") {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Selecione o nivel")),
                        );
                        return;
                      }

                      if (linguagensSelecionadas.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "Selecione pelomenos uma linguagem de programação",
                            ),
                          ),
                        );
                        return;
                      }

                      print(tempoExperiencia.toString());

                      if (salarioEscolhido == 0) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "Você deve escolher uma pretenção salarial.",
                            ),
                          ),
                        );
                        return;
                      }

                      setState(() {
                        salvando = true;
                      });
                      print("Dados salvo com sucesso!");

                      Future.delayed(Duration(seconds: 2), () {
                        // Aqui vamos fazer algo quando passar esse tempo

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Salvo com sucesso")),
                        );

                        setState(() {
                          salvando = false;

                          Navigator.pop(context);
                        });
                      });
                    },
                    child: Text("Salvar"),
                  ),
                ],
              ),
      ),
    );
  }
}
