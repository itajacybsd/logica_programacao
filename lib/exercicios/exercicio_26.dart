import 'dart:io';

void main(List<String> args) {
  int maiores = 0;
  for (var i = 1; i <= 12; i++) {
    print("Entre com a altura do $i o. atleta:");
    double numero = double.parse(stdin.readLineSync() as String);
    if (numero > 1.90) {
      maiores++;
    }
  }
  print("Quantidade de atletas com altura maior que 1.90: $maiores");
}
