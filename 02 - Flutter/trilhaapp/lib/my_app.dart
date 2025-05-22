import 'package:flutter/material.dart';

import 'pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Retira a facha de debug
      theme: ThemeData(primarySwatch: Colors.green, useMaterial3: false),
      home: HomePage(), // Define a primeira tela do aplicativo
    ); // Vai trazer inumeras possibilidades. (// Vai trazer AppBar, floatActionButton....)
  }
}
