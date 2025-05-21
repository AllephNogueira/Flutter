import 'package:meu_app_testes/meu_app_testes.dart';
import 'package:test/test.dart';


/* Como funciona aqui
Ele cria um metodo para a funçao calculate
expect = esperado
Esperado que calculete retorne 42
*/
void main() {
  test('calculate', () { // Nome do teste
    expect(calculate(), 42); // Funcao e valor esperado que ela deve retornar
  });


  
  test('calculate1', () {
    expect(calculate(), greaterThan(40)); // Aqui estamos dizendo que: Esperamos que o retorno da funcao seja igual ou maior a 40
  });
}


