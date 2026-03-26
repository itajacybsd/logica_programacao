import 'dart:io';

void main(List<String> args) {
  double precoSuco = 5.50;
  print("Quantidade de Suco desejada: ");
  int qtdeSuco = int.parse(stdin.readLineSync() as String);

  if (qtdeSuco > 10) {
    precoSuco = 4.50;
  }

  print("Valor a ser pago: $qtdeSuco * $precoSuco =  ${qtdeSuco * precoSuco} ");
}
