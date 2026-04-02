// crie um programa que vai calcular o valor total de uma compra de um Biscoito(bolacha)
// caso o cliente compre + que 10 Biscoito(bolacha) aplique 10% de desconto no valor do Biscoito(bolacha)
// ----------------------------------------

// Step 1
// Crie um menu para o usuário escolher 2 tipos de bolachas
// 1 - Sem Recheio
// 2 - Recheada

// Step 2
// Após isso solicite o usuário a quantidade de bolachas que ele gostaria

import 'dart:io';

void main(List<String> args) {
  int quantidade = 0;
  double valorBiscoito = 0.0;

  print("---Menu----");
  print("1 - Sem Recheio");
  print("2 - Recheada\n");
  print("Digite a opção desejada:");
  int opcao = int.parse(stdin.readLineSync() as String);

  print("\nDigite a quantidade:");
  quantidade = int.parse(stdin.readLineSync() as String);

  switch (opcao) {
    case 1:
      valorBiscoito = 1.5;
      break;

    case 2:
      valorBiscoito = 2.25;
      break;
  }

  var valorTotal = calcularPreco(quantidade, valorBiscoito);

  print("Valor total da compra: $valorTotal");
}

double calcularPreco(int quantidade, double valorBiscoito) {
  if (quantidade > 10) {
    valorBiscoito = valorBiscoito * 0.9;
    print("aplicado o desconto de 10%");
  }
  return valorBiscoito * quantidade;
}
