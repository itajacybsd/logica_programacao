//  Criar um script qu vai registrar  numero da camisa e o salario
// calcular a medida salarial
// mostrar os jogadores que estão ganhando acima da media

import 'dart:io';

void main(List<String> args) {
  List<int> numeroCamisa = [];
  List<double> salario = [];
  double totalSalario = 0;
  double mediaSalarial = 0;

  for (var jogadores = 0; jogadores < 11; jogadores++) {
    print("Digite o salario do jogador ${jogadores + 1}");
    double salarioJogador = double.parse(stdin.readLineSync() as String);

    print("Digite o numero da camisa do jogaodr ${jogadores + 1}");
    int numeroCamisaJogador = int.parse(stdin.readLineSync() as String);

    numeroCamisa.add(numeroCamisaJogador);
    salario.add(salarioJogador);

    totalSalario = totalSalario + salarioJogador;
  }
  mediaSalarial = totalSalario / 11;

  print("A media salarial é: $mediaSalarial");

  for (var jogadores = 0; jogadores < 11; jogadores++) {
    if (salario[jogadores] > mediaSalarial) {
      print(
        "Salario Acima da média ${salario[jogadores]} - camisa: ${numeroCamisa[jogadores]}",
      );
    }
  }
}
