void main(List<String> args) {
  print("inicio");
  calcularPorcentagem();
  print("fim");
}

void calcularPorcentagem() {
  var numero = 30;
  var porcentagem = 20;

  var resultado = numero * (porcentagem / 100);

  print("o resultado da porcentamgem é $resultado");
}
