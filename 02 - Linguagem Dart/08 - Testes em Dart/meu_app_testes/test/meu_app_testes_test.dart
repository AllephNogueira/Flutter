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
      equals(850),
    );
  });

  test(
    'Calcular o valor do produto com desconto em porcentagem passando o valor do produto zerado',
    () {
      expect(
        () => app.calcularDesconto(0, 150, false),
        throwsA(TypeMatcher<ArgumentError>()),
      );
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
    expect(
      () => app.calcularDesconto(100, 0, true),
      throwsA(TypeMatcher<ArgumentError>()),
    );
  });

  // Passamos o nome do teste
  // Abrimos uma funçao
  // Aqui estamos criando um map (valoresDeTeste)
  // Que recebe outros MAPS ex: {'valor' : 1000, 'desconto' : 150, 'percentual' : false } : 850,
  group("Calcula o valor do produto com desconto", () {
    // DESCRICAO DO TESTE
    var valoresDeTeste = {
      // VARIAVEL MAP, COM 2 MAPS DE TESTES QUE VAMOS FAZER.
      {'valor': 1000, 'desconto': 150, 'percentual': false}:
          850, // Esses sao os testes que vao ser feitos
      {'valor': 1000, 'desconto': 15, 'percentual': true}:
          850, // Testes que vao ser feitos
    };
    valoresDeTeste.forEach((valores, esperado) {
      // EXECUTA OS 2 MAPS QUE ESTA DENTRO DO TESTE
      test('Entrada: $valores - Esperado: $esperado', () {
        // Printar o valor e o valor esperado.
        expect(
          // ONDE VAMOS PASSAR OS DADOS DO NOSSO MAP
          app.calcularDesconto(
            // FUNCAO QUE VAMOS TESTAR
            double.parse(
              valores["valor"].toString(),
            ), // AQUI VAI SER PASSADO O VALOR QUE ESTA NO MAP LA EM CIMA, USANDO A CHAVE
            double.parse(
              valores["desconto"].toString(),
            ), // PASSANDO O VALOR PELA CHAVE E ATRIBUINDO EM VALORES.
            valores["percentual"] == true,
          ),
          equals(esperado), // EQUALS E O VALOR ESPERADO
        );
      });
    });
  });





  group("Descrição do teste", () {
    //1 Aqui dentro abrimos uma funçao que vai ser o bloco de codigos.

    var mapDeTestes = {
      //2 Aqui temos um map chave valor, temos outro map dentro que recebe outros testes.
      {
        'valor': 1000,
        'desconto': 15,
        'percentual': true,
      }: 850, // Aqui é como se fosse um teste unitario || valor esperado a fora.
      {'valor': 2000, 'desconto': 200, 'percentual': false}:
          1800, // Outro teste || o valor de fora é o valor esperado
    };
    // 3 Agora vamos usar o forEach porque temos um map com outros map dentro, oque seria como se fosse uma lista.
    // valores vai ser igual a : {'valor... 'desconto... 'percentual...}
    // valor esperado vai ser igual a ...850 ||||| ...1800
    mapDeTestes.forEach((valores, saidaEsperada) {
      test("Execurando o teste $valores com saida $saidaEsperada", () {

        //4 Aqui dentro é onde vamos digitar nosso teste.
        expect(
          app.calcularDesconto(
            // 5 Aqui vamos passar nossas chaves dos testes.
            // Seria basicamente igual a isso app.calcularDesconto(1000, 150, false), equals(850))

            // 6 ele vai entender que as chaves sao objetos
            // Entao precisamos converter elas para string e depois para double.
            double.parse(valores['valor'].toString()),
            double.parse(valores['desconto'].toString()),
            valores['percentual'] == true,
          ),
          equals(saidaEsperada),
        );
      });
    });
  });



}
