import 'dart:io';

void main(List<String> args) {
  List<int> listaVelocidades = [];

  for (var volta = 0; volta < 6; volta++) {
    print("Digite o valor da velocidade na volta: ${volta + 1} ");
    int velocidade = int.parse(stdin.readLineSync() as String);

    listaVelocidades.add(velocidade);
  }
  for (var i = 5; i >= 0; i--) {
    print("Velocidade.: ${listaVelocidades[i]}");
  }
}
