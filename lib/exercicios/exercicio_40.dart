import 'dart:io';

double valorGasolina = 0;
void main(List<String> args) {
  double valorEtanol = 0;

  double reajuste = 0;

  print("Digite o valor atual da Gasolina");
  valorGasolina = double.parse(stdin.readLineSync() as String);
  print("\nDigite o valor atual do Etanol");
  valorEtanol = double.parse(stdin.readLineSync() as String);
  print("\nDigite o valor do reajuste:");
  reajuste = double.parse(stdin.readLineSync() as String);
  String opcao = "";
  do {
    print("E - Etanol");
    print("G - Gasolina");
    print("\nDigite a opção:");
    opcao = stdin.readLineSync() as String;
  } while (opcao != "E" && opcao != "G");
  if (opcao == "E") {
    valorEtanol = etanol(valorEtanol, reajuste);
  } else {
    valorGasolina = gasolina(reajuste);
  }
  print("Valor da Gasolina: $valorGasolina");
  print("Valor do Etanol: $valorEtanol");
}

double gasolina(double reajuste) {
  return valorGasolina + reajuste;
}

double etanol(double combustivel, double reajuste) {
  valorGasolina = valorGasolina + (reajuste * 0.27);
  return combustivel + reajuste;
}
