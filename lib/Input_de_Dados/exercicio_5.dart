import 'dart:io';

void main(List<String> args) {
  print('Bem vindo a ADF');
  print('Digite seu nome:');
  var nome = stdin.readLineSync();

  print('Digite sua idade:');
  var idade = stdin.readLineSync();

  print('Digite sua altura:');
  var altura = stdin.readLineSync();

  print('Olá, $nome! Você tem $idade anos e sua altura é $altura.');
}
