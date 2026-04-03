import 'dart:io';

void main(List<String> args) {
  double salario = 0;
  do {
    print("Digite o salario do Funcionario:");
    salario = double.parse(stdin.readLineSync() as String);
  } while (salario <= 0);

  int mes = 0;
  do {
    print(
      "Digite o número correspondente ao mês para simulação da gratificação (1-12):",
    );
    mes = int.parse(stdin.readLineSync() as String);
  } while (mes <= 0 || mes > 12);
  gratificacao(salario, mes);
}

void gratificacao(double salario, int mes) {
  double gratificacao;
  if (mes >= 1 && mes <= 5) {
    gratificacao = salario * 0.30;
  } else if (mes >= 6 && mes <= 11) {
    gratificacao = salario * 0.40;
  } else {
    gratificacao = salario * 0.60;
  }
  print("O valor da simulação da gratificação é: $gratificacao");
}
