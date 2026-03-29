import 'dart:async';
import 'dart:io';
// Escreva um algoritmo que simule um radar em uma rodovia.
//
// A entrada das velocidades deve ser informada via teclado.
//
// Os veículos que passarem com a velocidade acima de 120 km/h devem ser multados.
//
// No final do algoritmo, deve-se apresentar a quantidade de veículos com a velocidade medida e a quantidade
// de veículos multados.

void main() {
  int qtdeVeiculos = 0;
  int totalVelocidade = 0;
  int veiculosMultados = 0;

  bool temCarro = true;

  while (temCarro) {
    print("Digite a velocidade do carro:");
    int velocidadeCarro = int.parse(stdin.readLineSync() as String);
    totalVelocidade = totalVelocidade + velocidadeCarro;
    qtdeVeiculos++;

    if (velocidadeCarro > 120) {
      veiculosMultados++;
    }

    print("ainda tem carro? (sim/não)");
    String aindaTemCarro = stdin.readLineSync() as String;
    if (aindaTemCarro == "não") {
      temCarro = false;
    }
  }
  print(
    "Passaram $qtdeVeiculos, e a media de velocidade foi de ${totalVelocidade / qtdeVeiculos} km/h",
  );
  print(
    "Total de veículos multados por velocidade acima de 120km/h: $veiculosMultados",
  );
}
