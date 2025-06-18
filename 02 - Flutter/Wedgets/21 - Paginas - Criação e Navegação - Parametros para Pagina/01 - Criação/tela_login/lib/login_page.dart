import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 162, 184, 196),

        body: SizedBox(
          /* Dizendo que nosso container pode ocupar toda a largura | Assim colocamos ele no meio. */
          width: double.infinity,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /* Imagina como se aqui fosse um item, mas esse item esta transparente, apenas "Ocupando aquele espaço" */
              const SizedBox(height: 70),

              Icon(
                Icons.person,
                size: 150,
                color: const Color.fromARGB(255, 13, 26, 143),
              ),

              SizedBox(height: 70),

              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        "Digite seu e-mail:",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 3,
                      child: Text(
                        "email",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        "Digite sua senha:",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 3,
                      child: Text(
                        "senha",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(child: Container()),

              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                color: const Color.fromARGB(255, 34, 4, 102),
                height: 30,
                alignment: Alignment.center,
                child: Text("ENTRAR", style: TextStyle(color: Colors.white)),
              ),

              SizedBox(height: 10),

              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: Text(
                  "CADASTRE-SE",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 43, 21, 143),
                  ),
                ),
              ),

              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
