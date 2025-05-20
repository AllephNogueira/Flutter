// Variavel dinamica, podemos passar qualquer tipo de dados para ela e em qualquer hora podemos mudar
// E assim ela pode receber qualquer coisa.

// A variavel dynamic podemos colocar qualquer metodo nela
// Seja variavel.tamanhoLista 
// Sabemos que nao existe isso, ele vai aceitar, pq ela confere tudo em tempo de execuçao
// Quando o aplicativo começar a rodar, vamos ter problemas.

void variavelDynamic() {
  dynamic variavel1 = "Alleph";
  variavel1 = 10;

  variavel1 = [10, 20, 30, 40, 50]; 
}
