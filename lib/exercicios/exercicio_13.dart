import 'dart:io';

void main(List<String> args) {
  print("Digite o valor da gasolina: ");
  double gasolina = double.parse(stdin.readLineSync() as String);

  print("Digite o valor do etanol: ");
  double etanol = double.parse(stdin.readLineSync() as String);

  if ((etanol / gasolina) >= 0.7) {
    print('Compensa abastecer com gasolina');
  } else {
    print('Compensa abastecer com etanol');
  }
}
