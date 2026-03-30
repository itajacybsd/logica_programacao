// FEITO SOMENTE COM O QUE FOI VISTO ATÉ O MOMENTO

import 'dart:io';

void main(List<String> args) {
  List<String> senhaDigitada = [];
  List<String> senhaCripto = [];

  for (var i = 0; i < 6; i++) {
    bool again = true;
    while (again) {
      print("Digite uma letra(a, e, i, o, u ): ");
      String letra = stdin.readLineSync() as String;
      switch (letra) {
        case "a":
          senhaDigitada.add(letra);
          senhaCripto.add("z");
          again = false;
          break;
        case "e":
          senhaDigitada.add(letra);
          senhaCripto.add("3");
          again = false;
          break;
        case "i":
          senhaDigitada.add(letra);
          senhaCripto.add("l");
          again = false;
          break;
        case "o":
          senhaDigitada.add(letra);
          senhaCripto.add("0");
          again = false;
          break;
        case "u":
          senhaDigitada.add(letra);
          senhaCripto.add("\$");
          again = false;
          break;

        default:
          print("Letra inválida");
      }
    }
  }
  print("Senha Digitada......: $senhaDigitada");
  print("Senha Criptografada.: $senhaCripto");
}
