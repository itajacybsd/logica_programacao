import 'dart:io';

void main(List<String> args) {
  double maiorNota = 0;
  double mediaNota = 0;
  double menorNota = 99;
  double totalNota = 0;

  for (int aluno = 1; aluno <= 25; aluno++) {
    print("Digite o valor da nota do $aluno o. aluno:");
    double nota = double.parse(stdin.readLineSync() as String);
    if (nota >= maiorNota) {
      maiorNota = nota;
    }
    if (nota < menorNota) {
      menorNota = nota;
    }
    totalNota = totalNota + nota;
  }
  mediaNota = totalNota / 25;

  print("Maior Nota: $maiorNota");
  print("Menor Nota: $menorNota");
  print("Media das Notas: $mediaNota");
}
