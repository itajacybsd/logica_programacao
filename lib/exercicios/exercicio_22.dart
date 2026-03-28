import 'dart:io';

void main(List<String> args) {
  print("Digite uma letra: ");

  String letra = stdin.readLineSync() as String;

  switch (letra) {
    case "a":
      print("É uma vogal");
      break;
    case "e":
      print("É uma vogal");
      break;
    case "i":
      print("É uma vogal");
      break;
    case "o":
      print("É uma vogal");
      break;
    case "u":
      print("É uma vogal");
      break;
    case "A":
      print("É uma vogal");
      break;
    case "E":
      print("É uma vogal");
      break;
    case "I":
      print("É uma vogal");
      break;
    case "O":
      print("É uma vogal");
      break;
    case "U":
      print("É uma vogal");
      break;
    default:
      print("NÃO é uma vogal");
      break;
  }
}
