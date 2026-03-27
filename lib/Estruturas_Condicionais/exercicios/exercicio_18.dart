import 'dart:io';

void main(List<String> args) {
  print("Cálculo de IMC\n");
  print("\nDigite seu peso: ");
  double peso = double.parse(stdin.readLineSync() as String);
  print("\nDigite sua altura: ");
  double altura = double.parse(stdin.readLineSync() as String);

  double imc = peso / (altura * altura);

  if (imc < 18.5) {
    print("Magreza");
  } else if (imc >= 18.5 && imc <= 24.9) {
    print("Normal");
  } else if (imc > 24.9 && imc <= 30) {
    print("Sobrepeso");
  } else {
    print("Obesidade");
  }
}
