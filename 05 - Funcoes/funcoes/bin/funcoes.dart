import 'package:funcoes/funcoes.dart' as funcoes;

void main(List<String> arguments) {
  // Como funciona o calculo fatorial
  // Vamos imaginar um fatorial de 3
  // Entao seria
  // 3 * 2 * 1 = 6
  // 3 * 2 = 6 
  // 6 * 1 = 6

  // E como funciona a funcao recursiva
  // É uma funcao que chama ela mesmo
  // Podemos reparar que passamos um numero para a funcao

  // Numero 3
  // Se o numero for == 1 ja saimos dela

  // Se nao for
  // Ai fazemos numero(3) * (parametro=3 - 1)
  //            numero(3) *  2
  //                    = 6

  // Resumindo a funçao vai ficar chamando ela mesmo sem parar
  // Como se fosse um loop
  // Faz a conta e chama ela novamente
  // Faz a conta e chama ela novamente
  // Ate chegar no 1



  var fatorialCalculado = fatorial(3);
  print(fatorialCalculado);
}

int fatorial(int numero) {
  if (numero == 1) {
    return 1;
  }

  return numero * fatorial(numero - 1);
}
