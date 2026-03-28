import 'dart:io';

void main(List<String> args) {
  print("Entre com a velocidade: ");
  int velocidade = int.parse(stdin.readLineSync() as String);

  if (velocidade > 80) {
    print("Multado!!");
  }
}
