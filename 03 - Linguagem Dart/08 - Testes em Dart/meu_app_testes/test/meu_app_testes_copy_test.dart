import 'package:meu_app_testes/meu_app_testes.dart' as app;
import 'package:test/test.dart';

/* Como funciona aqui
Ele cria um metodo para a funçao calculate
expect = esperado
Esperado que calculete retorne 42
*/
void main() {
  test('Calcula o desconto do produto sem porcentagem', () {
    // Nome do teste
    expect(
      // Na funcao pegamos o valor do produto
      // Estamos dando 150 de desconto
      // Esperpamos oque? 850
      app.calcularDesconto(1000, 150, false),
      850,
    );
  });

  test(
    'Calcular o valor do produto com desconto em porcentagem passando o valor do produto zerado',
    () {
      expect(() => app.calcularDesconto(0, 150, false), throwsA(TypeMatcher<ArgumentError>() ));
    },
  );

  test('Calcular com desconto em porcentagem', () {
    expect(
      // Nesse caso de baixo estamos dando desconto em porcentagem
      // Estamos pegando um produto de 100 reais
      // Dando desconto de 20%
      // E esperamos que esse produto retorne 80 reais.
      app.calcularDesconto(100, 20, true),
      80,
    );
  });

    test('Calcular o valor do produto com desconto ZERADO!', () {
    expect(() => app.calcularDesconto(100, 0, true), throwsA(TypeMatcher<ArgumentError>()));
  });
}
