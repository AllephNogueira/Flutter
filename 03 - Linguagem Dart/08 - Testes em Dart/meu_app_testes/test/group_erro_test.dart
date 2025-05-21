import 'package:meu_app_testes/meu_app_testes.dart' as app;
import 'package:test/test.dart';

void main() {
  // Agora vamos simular fazendo com erros.
  // Vamos seguir a outra pratica usando como se o usuario estivesse digitando desconto 0

  group(
    "Calcular o valor do produto com desconto em porcentagem passando o valor do produto zerado | Deve gerar erros.",
    () {
      //1 Aqui dentro abrimos uma funçao que vai ser o bloco de codigos.

      var mapDeTestes = {
        {'valor': 0, 'desconto': 15, 'percentual': false},
        {'valor': 2000, 'desconto': 0, 'percentual': true},
      };
      for (var valores in mapDeTestes) {
        test("Execurando o teste $valores", () {
          expect(
            () => app.calcularDesconto(
                  double.parse(valores['valor'].toString()),
                  double.parse(valores['desconto'].toString()),
                  valores['percentual'] == true,
            ),
            throwsA(
              TypeMatcher<ArgumentError>(),
            ), // Agora vamos mudar o esperado... que vai ser o throwsA
          );
        });
      }
    },
  );
}
