import 'dart:io';

void main(List<String> args) {
  print('Digite seu nome:');
  String? nome = stdin.readLineSync();

  print('Digite sua idade:');
  String? idadeInput = stdin.readLineSync();
  int? idade = int.tryParse(idadeInput ?? '');

  if (nome != null && idade != null) {
    print('Olá, $nome! Você tem $idade anos.');
  } else {
    print('Dados inválidos. Por favor, tente novamente.');
  }
}
