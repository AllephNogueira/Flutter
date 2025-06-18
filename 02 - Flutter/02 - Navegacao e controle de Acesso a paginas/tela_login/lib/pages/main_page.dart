import 'package:flutter/material.dart';
import 'package:tela_login/pages/dados_cadastrais.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Painel de Controle")),

        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: SizedBox(
                    width: double.infinity,
                    child: InkWell(
                      child: const Text("Dados cadastrados"),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DadosCadastrais(
                              texto: "Cadastro",
                              dados: ["Alleph", "Nogueira"],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),

                const Divider(),
                const SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: SizedBox(
                    width: double.infinity,
                    child: InkWell(child: const Text("Saldo"), onTap: () {}),
                  ),
                ),

                const Divider(),
                const SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: SizedBox(
                    width: double.infinity,
                    child: InkWell(child: const Text("Sair"), onTap: () {}),
                  ),
                ),

                const Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
