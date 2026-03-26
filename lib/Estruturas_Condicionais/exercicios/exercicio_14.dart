import 'dart:io';

void main(List<String> args) {
  print('Entre com um número inteiro:');
  int numero = int.parse(stdin.readLineSync() as String);

  if (numero > 0) {
    print("Número Positivo");
  } else {
    if (numero < 0) {
      print("Número Negativo");
    } else {
      print("ZERO");
    }
  }
}
