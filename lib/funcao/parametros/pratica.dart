void main(List<String> args) {
  var quantidade = 50;
  var valorBiscoito = 1.0;

  var valorTotal = calcularPrecoBiscoito(quantidade, valorBiscoito);

  print("Valor total da compra: $valorTotal");
}

double calcularPrecoBiscoito(int quantidade, double valorBiscoito) {
  if (quantidade > 10) {
    valorBiscoito = valorBiscoito * 0.9;
    print("aplicado o desconto de 10%");
  }
  return valorBiscoito * quantidade;
}
