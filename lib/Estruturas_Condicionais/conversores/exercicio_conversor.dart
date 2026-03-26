import 'dart:io';

void main() {
  print("Digite sua idade: ");
  String idadeStr = stdin.readLineSync() as String;

  print("Digite o valor do Celular");
  String valorCelularStr = stdin.readLineSync() as String;

  int idade = int.parse(idadeStr) + 10;
  double valorCelular = double.parse(valorCelularStr) - 10;

  print("Idade.: $idade");
  print("Valor do Celular.: $valorCelular");
}
