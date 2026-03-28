import 'dart:io';

void main(List<String> args) {
  double maiorValorSacado = 0;
  double mediaValorSacado = 0;
  double totalValorSacado = 0;
  for (int cliente = 1; cliente <= 10; cliente++) {
    print("Digite o valor sacado pelo cliente $cliente:");
    double valorSacado = double.parse(stdin.readLineSync() as String);
    if (valorSacado > maiorValorSacado) {
      maiorValorSacado = valorSacado;
    }
    totalValorSacado = totalValorSacado + valorSacado;
  }
  mediaValorSacado = totalValorSacado / 10;

  print("Maior valor sacado no dia: $maiorValorSacado");
  print("Valor total sacado no dia: $totalValorSacado");
  print("Media de valor sacado no dia: $mediaValorSacado");
}
