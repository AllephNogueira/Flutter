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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AQUI É ONDE VAI NOSSOS WIDGET
      appBar: AppBar(
        title: Text("Atlatic Bank", style: GoogleFonts.pacifico()),
        centerTitle: true,
      ), // App bar
      body: Center(child: Text(numeroGerado.toString())),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            numeroGerado =
                GeradorNumerosAleatoriosServices.gerarNumeroAleatorio(100);
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
