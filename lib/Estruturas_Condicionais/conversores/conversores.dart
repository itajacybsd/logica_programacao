import 'dart:io';

void main(List<String> args) {
  print("digite sua idade:");
  var idade = stdin.readLineSync() as String;

  int idadeConvertida = int.parse(idade) + 2;
  print('A idade convertida é: $idadeConvertida');
}
