import 'dart:io';

void main(List<String> args) {
  int opcao;
  double num1 = 0;
  double num2 = 0;

  do {
    print("\n\nMenu de Operações\n");
    print("0 - Sair");
    print("1 - Adição, Subtração, Multiplicação e Divisão");
    print("Entre com a operação desejada(0-4):");
    opcao = int.parse(stdin.readLineSync() as String);
    if (opcao == 0) {
      break;
    }
    if (opcao >= 2) {
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
    calculadora(num1, num2);
  } while (opcao != 0);

  print("\n\nfim do programa");
}

void calculadora(double numero1, double numero2) {
  double soma = 0;
  print(
    "O resultado da Adição entre $numero1 e $numero2 é: ${numero1 + numero2}",
  );
  soma = soma + (numero1 + numero2);
  print(
    "O resultado da Subtração entre $numero1 e $numero2 é: ${numero1 - numero2}",
  );
  soma = soma + (numero1 - numero2);
  print(
    "O resultado da Multiplicação entre $numero1 e $numero2 é: ${numero1 * numero2}",
  );
  soma = soma + (numero1 * numero2);
  print(
    "O resultado da Divisão entre $numero1 e $numero2 é: ${numero1 / numero2}",
  );
  soma = soma + (numero1 / numero2);

  print(
    "\nO valor da soma dos resultados das operações entre os 2 números é: $soma",
  );
}
