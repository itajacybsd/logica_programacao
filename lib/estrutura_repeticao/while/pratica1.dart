import 'dart:io';

void main(List<String> args) {
  int diasNascimento = 0;
  int totalVacinasRealizadas = 1;
  while (totalVacinasRealizadas <= 30) {
    print("Digite o numero de dias de vida do bebe: )");
    int diasNascimentoLeitura = int.parse(stdin.readLineSync() as String);
    diasNascimento = diasNascimento + diasNascimentoLeitura;
    totalVacinasRealizadas++;
  }
  print("A media dos bebes vacinados no dia foi de : ${diasNascimento / 30}");
}
