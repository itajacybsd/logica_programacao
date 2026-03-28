import 'dart:io';

void main(List<String> args) {
  int maiores = 0;
  for (var i = 1; i <= 10; i++) {
    print("Digite o $i o. número:");
    double numero = double.parse(stdin.readLineSync() as String);
    if (numero > 50) {
      maiores++;
    }
  }
  print("Quantidade de números digitados com valor maior que 50: $maiores");
}
