import 'dart:io';

void main(List<String> args) {
  print("Digite o nome: ");
  String nome = stdin.readLineSync() as String;
  print("Digite a nota 1: ");
  double nota1 = double.parse(stdin.readLineSync() as String);

  print("Digite a nota 2: ");
  double nota2 = double.parse(stdin.readLineSync() as String);

  double media = (nota1 + nota2) / 2;

  if (media >= 6.0) {
    print("APROVADO(A)");
  } else {
    print("Digite a nota  da recuperação: ");
    double recuperacao = double.parse(stdin.readLineSync() as String);
    if (recuperacao >= 5) {
      print("APROVADO(A)");
    } else {
      print("RECUPERAÇAO");
    }
  }
}
