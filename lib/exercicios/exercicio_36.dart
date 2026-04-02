import 'dart:io';

void main(List<String> args) {
  int operacao;
  double num1 = 0;
  double num2 = 0;

  do {
    print("\n\nMenu de Operações\n");
    print("0 - Sair");
    print("1 - Adição");
    print("2 - Subtração");
    print("3 - Multiplicação");
    print("4 - Divisão");
    print("Entre com a operação desejada(0-4):");
    operacao = int.parse(stdin.readLineSync() as String);
    if (operacao == 0) {
      break;
    }
    if (operacao >= 5) {
      continue;
    }

    do {
      print("Entre com o primeiro número:");
      num1 = double.parse(stdin.readLineSync() as String);
    } while (num1 <= 0);
    do {
      print("Entre com o segundo número:");
      num2 = double.parse(stdin.readLineSync() as String);
    } while (num2 <= 0);

    print("\n");
    calculadora(operacao, num1, num2);
  } while (operacao != 0);

  print("fim do programa");
}

void calculadora(int operacao, double numero1, double numero2) {
  switch (operacao) {
    case 1:
      print(
        " =====> O resultado da Adição entre $numero1 e $numero2 é: ${numero1 + numero2}  <=======",
      );
      break;

    case 2:
      print(
        "O resultado da Subtração entre $numero1 e $numero2 é: ${numero1 - numero2}",
      );
      break;

    case 3:
      print(
        "O resultado da Multiplicação entre $numero1 e $numero2 é: ${numero1 * numero2}",
      );
      break;

    case 4:
      print(
        "O resultado da Divisão entre $numero1 e $numero2 é: ${numero1 / numero2}",
      );
      break;
  }
}
