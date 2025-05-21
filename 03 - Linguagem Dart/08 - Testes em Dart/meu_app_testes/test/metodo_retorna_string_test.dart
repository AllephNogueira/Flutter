import 'package:test/test.dart';
import 'package:meu_app_testes/meu_app_testes.dart' as app;

void main() {
  test('Metodo que retorna uma String', () {
    expect(app.retornaString(), equals("Alleph"));
  });



  // Ele espera que o texto seja entregue tudo em maiusculo
  // Estamos passando um texto para teste em minusculo
  // E vamos querer saber se ele retorna tudo em maisuculo
    test('Testar conversao para uppercase', () {
    expect(app.convertUpperCase('alleph'), equals('ALLEPH'));
  });


  // Agora assim podemos testar o matchers
  // Ignorar se o texto esta saindo em maiusculo ou minusculo
    test('Testar conversao para uppercase teste2', () {
    expect(app.convertUpperCase('alleph'), equalsIgnoringCase('alleph'));
  });
}
