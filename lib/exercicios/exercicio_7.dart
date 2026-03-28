import 'dart:io';

void main(List<String> args) {
  print("Entre com um número entre 1 e 10: ");
  int numeroDigitado = int.parse(stdin.readLineSync() as String);

  if (numeroDigitado == 5) {
    print("Você acertou!!");
  }
}
