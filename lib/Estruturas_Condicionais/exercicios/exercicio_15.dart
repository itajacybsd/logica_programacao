import 'dart:io';

void main(List<String> args) {
  print("Digite um número entre 1 e 7: ");
  int numero = int.parse(stdin.readLineSync() as String);
  if (numero == 1) {
    print("Domingo");
  } else if (numero == 2) {
    print("Segunda");
  } else if (numero == 3) {
    print("Terça");
  } else if (numero == 4) {
    print("Quarta");
  } else if (numero == 5) {
    print("Quinta");
  } else if (numero == 6) {
    print("sexta");
  } else if (numero == 7) {
    print("Sábado");
  } else {
    print("Número inválido");
  }
}
