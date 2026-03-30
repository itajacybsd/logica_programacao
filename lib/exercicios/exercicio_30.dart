// FEITO COM O QUE FOI VISTO ATE O MOMENTO

import 'Dart:io';
void main() {
  int dia;
  do {
    print("Digite a melhor data para pagamento do Boleto (2, 5 ou 10):");
    dia = int.parse(stdin.readLineSync() as String);
    if (dia == 2 || dia == 5 || dia == 10){
      print("Boleto Registrado");
    } else {
      print("Dia inválido");
    }
  } while (dia != 2 && dia != 5 && dia != 10); 

  print("fim");


}