import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trilhaapp/services/gerador_numeros_aleatorios.dart';

class HomePage extends StatefulWidget {
  // AQUI SAO NOSSAS PAGINAS
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  var numeroGerado = 0;
  var vezesClicado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AQUI É ONDE VAI NOSSOS WIDGET
      appBar: AppBar(
        title: Text(
          "Atlatic Bank", //style: GoogleFonts.pacifico()),
        ),
        centerTitle: true,
      ), // App bar
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Centraliza os textos verticalmente
          children: [
            // Aceita varios filhos aqui dentro
            // No caso aqui podemos adicionar varios textos.. botoes..
            Text(
              numeroGerado.toString(),
              //style: GoogleFonts.aBeeZee(),), Poderiamos adicionar uma fonte aqui
            ),
            SizedBox(height: 10), // Espaço entre os itens
            Text("Botao clicado $vezesClicado"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            numeroGerado =
                GeradorNumerosAleatoriosServices.gerarNumeroAleatorio(100);
            vezesClicado++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
