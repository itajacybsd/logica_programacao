import 'dart:io';

void main(List<String> args) {
  print('Digite seu nome:');
  var nome = stdin.readLineSync();

  print('Digite sua frase preferida:');
  var frasePreferida = stdin.readLineSync();

  print('A frase preferida da(o) $nome! é: "$frasePreferida".');
}
