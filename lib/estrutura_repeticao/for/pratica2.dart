import 'dart:io';

void main(List<String> args) {
  print("Digite um número para calcular a tabuada:");
  int numero = int.parse(stdin.readLineSync() as String);
  for (var contador = 10; contador >= 1; contador--) {
    int resultado = numero * contador;
    print("$numero x $contador = $resultado");
  }
}
