import 'dart:io';

void main(List<String> args) {
  double valorPedido = 0;
  do {
    print("Digite o valor total do pedido:");
    valorPedido = double.parse(stdin.readLineSync() as String);
  } while (valorPedido <= 0);

  int opcao = 0;
  do {
    print("\n=== Prazos de Entrega ===");
    print("1 -  3 dias úteis - R\$ 25,00");
    print("2 -  5 dias úteis - R\$ 20,00");
    print("3 -  7 dias úteis - R\$ 15,00");
    print("4 - 10 dias úteis - R\$ 10,00");
    print("\nEntre com a opção de entrega: ");
    opcao = int.parse(stdin.readLineSync() as String);
  } while (opcao <= 0 || opcao > 4);

  double totalDaCompra = 0;

  switch (opcao) {
    case 1:
      totalDaCompra = valorPedido + 25;
      break;

    case 2:
      totalDaCompra = valorPedido + 20;
      break;

    case 3:
      totalDaCompra = valorPedido + 15;
      break;

    case 4:
      totalDaCompra = valorPedido + 10;
      break;
  }

  print(
    "Valor do pedido: $valorPedido, valor Total do Pedido com frete: $totalDaCompra",
  );
}
