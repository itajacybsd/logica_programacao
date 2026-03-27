import 'dart:io';

void main(List<String> args) {
  print("Digite a estação desejada (outono/inverno/primavera/verão)");
  String estacao = stdin.readLineSync() as String;

  if (estacao == "outono") {
    print("inicio da estação: 20 de março");
  } else if (estacao == "inverno") {
    print("inicio da estação: 21 de junho");
  } else if (estacao == "primavera") {
    print("inicio da estação: 22 de setembro");
  } else if (estacao == "verão") {
    print("inicio da estação: 21 de dezembro");
  } else {
    print("Estação inválida!");
  }
}
