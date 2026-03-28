// FEITO COM O QUE FOI VISTO ATÉ AGORA

import 'dart:io';

void main(List<String> args) {
  print("Digite um tamanho (P/M/G): ");

  String tamanho = stdin.readLineSync() as String;

  switch (tamanho) {
    case "P":
      print("P: 0.46 X 0.55");
      break;
    case "M":
      print("M: 0.51 X 0.56");
      break;
    case "G":
      print("G: 0.52 X 0.58");
      break;
    default:
      print("Opção inválida");
  }
}
