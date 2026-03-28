// FEITO SOMENTE COM O QUE FOI VISTO ATÉ O MOMENTO
import 'dart:io';

void main(List<String> args) {
  double soma = 0;
  for (var i = 1; i <= 5; i++) {
    print("Digite o $i o. número:");
    double numero = double.parse(stdin.readLineSync() as String);
    soma = soma + numero;
  }
  print("O valor da soma dos números digitados é: $soma");
}
