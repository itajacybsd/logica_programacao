// FEITO SOMENTE COM O QUE FOI VISTO ATÉ O MOMENTO

import 'dart:io';

void main(List<String> args) {
  int soma = 0;

  do {
    int numero = 0;

    while (numero <= 0) {
      print("Digite um número:");
      numero = int.parse(stdin.readLineSync() as String);
    }
    soma = soma + numero;
  } while (soma < 100);
  print("O valor da soma dos números digitados é: $soma");
}
