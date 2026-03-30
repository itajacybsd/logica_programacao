// FEITO COM O QUE FOI VISTO ATE O MOMENTO

import 'dart:io';

void main(List<String> args) {
  List<String> listaJogadores = [];
  List<int> listaQtdeGols = [];
  int jogadorComMaiorNumGols = 0;
  int maiorNumeroDeGols = 0;

  for (int jogador = 0; jogador < 11; jogador++) {
    print("Entre com o nome do jogador no. ${jogador + 1}");
    String nomeJogador = stdin.readLineSync() as String;
    print("Entre com a quantidade de gols do jogador no. ${jogador + 1}");
    int qtdeDeGols = int.parse(stdin.readLineSync() as String);

    listaJogadores.add(nomeJogador);
    listaQtdeGols.add(qtdeDeGols);

    if (qtdeDeGols >= maiorNumeroDeGols) {
      maiorNumeroDeGols = qtdeDeGols;
      jogadorComMaiorNumGols = jogador;
    }
  }

  print(
    "O artilheiro do time é o ${listaJogadores[jogadorComMaiorNumGols]}, com ${listaQtdeGols[jogadorComMaiorNumGols]} gols",
  );
}
