import 'dart:io';

void main(List<String> args) {
  print("Menu de Sucos\n");
  print("L - Laranja");
  print("M - Mornago");
  print("A - Acerola");
  print("U - Uva\n");

  print("Digite a letra do suco desejado:");
  String sucoEscolhido = stdin.readLineSync() as String;

  if (sucoEscolhido == "L") {
    print("laranja -> vitamina C");
  } else if (sucoEscolhido == "M") {
    print("morango --> vitamina A");
  } else if (sucoEscolhido == "A") {
    print("acerola --> vitamina C");
  } else if (sucoEscolhido == "U") {
    print("uva --> vitamina E");
  } else {
    print("Opção inválida");
  }
}
