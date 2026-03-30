import 'dart:io';

void main() {
  print('Sistema de agendamento de prova de CNH');

  int idade;

  do {
    print('Atenção: O candidato deve ser maior de 18 anos');
    print('Digite a idade:');
    var idadeLeitura = stdin.readLineSync() as String;
    idade = int.parse(idadeLeitura);
  } while (idade < 18);
}
