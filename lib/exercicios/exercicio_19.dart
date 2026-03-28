import 'dart:io';

void main(List<String> args) {
  print("Digite sua idade:");
  int idade = int.parse(stdin.readLineSync() as String);
  print("Digite quantos anos está habilitado com a carteira B:");
  int carteiraB = int.parse(stdin.readLineSync() as String);
  print("Digite quantos anos está habilitado com a carteira C:");
  int carteiraC = int.parse(stdin.readLineSync() as String);
  print("Digite o número de infrações nos últimos 12 meses:");
  int infracoes = int.parse(stdin.readLineSync() as String);

  if (idade > 21 && (carteiraB >= 2 || carteiraC >= 1) && infracoes == 0) {
    print("Candidato está habilitado a tirar carteira do tipo D");
  } else {
    print("Candidato NÃO está habilitado a tirar carteira do tipo D");
  }
}
