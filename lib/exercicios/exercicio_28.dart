// FEITO SOMENTE COM O QUE FOI VISTO ATÉ O MOMENTO
import 'dart:io';

void main(List<String> args) {
  for (var i = 1; i <= 5; i++) {
    print("Quantas bolinhas de gude tem no pote? tentativa $i/5: ");
    int chute = int.parse(stdin.readLineSync() as String);
    if (chute == 82) {
      print("Parabéns, você acertou!");
    } else if (chute > 82) {
      print("Você Errou!  Existem menos bolinhas do que você digitou");
    } else {
      print("Você Errou!  Existem mais bolinhas do que você digitou");
    }
  }
}
