import 'package:funcao_recebe_parametro_funcao/funcao_recebe_parametro_funcao.dart'
    as funcao_recebe_parametro_funcao;

void main(List<String> arguments) {
  print(incrementar(10));
  print(decrementar(10));

  // Atençao aos parametros
  // Quando passamos parametros estamos chamando uma funçao para executar
  // Quando passamos sem parametros, estamos passando uma referencia dela.

  // Agora como fazemos a chamada dela
  print(executar(10, incrementar)); // Saida 11
  print(executar(10, decrementar)); // Saida 9
  

  // Resumindo: estamos criando uma funcao que esta chamando outra funcao.
  // Estamos chamando uma funcao que espera receber uma outra funcao.

  // Você está dizendo: “vou executar qualquer função que receber um inteiro como parâmetro, e vou passar esse numero para ela”.
  // Atençao para isso funcionar temos que ter a mesma quantidade de parametros
  // Funcao incrementar recebe 1 parametro
  // Entao funcao executar para da certo com ela só pode ter um parametro.
}

// Agora criando uma funcao que recebe 2 parametros
// Um inteiro e uma funcao
int executar(int numero, Function funcao) {
  return funcao(numero);
}

int incrementar(int numero) => numero + 1;
int decrementar(int numero) => numero - 1;
