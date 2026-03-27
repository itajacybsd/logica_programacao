import 'dart:io';

void main(List<String> args) {
  print("SAbores dos sorvetes de fruta");
  print("Código 1 - Sabor Uva ");
  print("Código 2 - Sabor Morango");
  print("Código 3 - Sabor Manga");
  print("Código 4 - Sabor Amora");
  print("Digite o código do sabor (1 até 4)");

  int tipoSorvete = int.parse(stdin.readLineSync() as String);

  switch (tipoSorvete) {
    case 1:
      print("Sorvete de Uva - 70 calorias");
      break;
    case 2:
      print("Sorvete de Morango - 70 calorias");
      break;

    case 3:
      print("Sorvete de Manga - 71 calorias");
      break;
    case 4:
      print("Sorvete de Amora - 54 calorias");
      break;
    default:
      print('Código Inválido');
  }
}
