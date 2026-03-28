import 'dart:io';

void main(List<String> args) {
  double desconto = 0;
  String vlrDesconto = '';

  double vlrPao = 0.95;
  double vlrQueijo = 29.90;
  double vlrBisnaga = 12.50;
  double vlrPaoForma = 11.00;
  double vlrLeite = 4.10;
  double vlrPaoDoce = 3.75;
  double vlrSuspiro = 8.15;

  double totalAPagar;

  print("Padaria\n");
  print("Entre com a quantidade de Pães:");
  int qtdPaes = int.parse(stdin.readLineSync() as String);
  print("Entre com a quantidade de Queijo:");
  int qtdQueijo = int.parse(stdin.readLineSync() as String);
  print("Entre com a quantidade de Bisnaga:");
  int qtdBisnaga = int.parse(stdin.readLineSync() as String);
  print("Entre com a quantidade de Pão de Forma:");
  int qtdPaoForma = int.parse(stdin.readLineSync() as String);
  print("Entre com a quantidade de Leite:");
  int qtdLeite = int.parse(stdin.readLineSync() as String);
  print("Entre com a quantidade de Pão Doce:");
  int qtdPaoDoce = int.parse(stdin.readLineSync() as String);

  print("Entre com a quantidade de Suspiro:");
  int qtdSuspiro = int.parse(stdin.readLineSync() as String);

  if (qtdLeite > 0 && (qtdPaoDoce > 0 || qtdSuspiro > 0)) {
    desconto = 0.95;
    vlrDesconto = "5%";
  }
  if (qtdPaes >= 10 && qtdQueijo >= 1) {
    desconto = 0.90;
    vlrDesconto = "10%";
  }
  if (qtdBisnaga > 0 || qtdPaoForma > 0) {
    desconto = 0.85;
    vlrDesconto = "15%";
  }

  double totalDaCompra =
      ((qtdPaes * vlrPao) +
      (qtdSuspiro * vlrSuspiro) +
      (qtdPaoDoce * vlrPaoDoce) +
      (qtdLeite + vlrLeite) +
      (qtdPaoForma * vlrPaoForma) +
      (qtdBisnaga * vlrBisnaga) +
      (qtdQueijo * vlrQueijo));

  totalAPagar = totalDaCompra * desconto;

  print(
    "Valor Total da compra: $totalDaCompra, valor do desconto: $vlrDesconto. Total com desconto: $totalAPagar ",
  );
}
