/* 
    Agora para finalizar você deve permitir a compra de mais de um ingresso.
    por usuário.
    Regras:
      - Validar se a fileira escolhida existe
      - Validar se a poltrona escolhida existe
      - Validar se a poltrona escolhida está disponível para compra.
*/

import 'dart:io';

void main(List<String> args) {
  var teatro = [];
  var fileiras = 7;
  var poltronasPorFileira = 10;

  for (var fileira = 0; fileira < fileiras; fileira++) {
    var fileiraTeatro = [];
    for (var poltrona = 0; poltrona < poltronasPorFileira; poltrona++) {
      fileiraTeatro.add(0);
    }
    teatro.add(fileiraTeatro);
  }

  bool querComprar = true;
  while (querComprar) {
    print("Deseja Comprar(S/N)");
    String desejoComprar = stdin.readLineSync() as String;

    if (desejoComprar != "N" && desejoComprar != "S") {
      print("Opção inválida, digite S ou N");
    } else if (desejoComprar == "N") {
      querComprar = false;
    } else {
      int fileiraEscolhida = -1;
      while (fileiraEscolhida < 0 || fileiraEscolhida > (fileiras - 1)) {
        print("Digite o número da fileira desejada (0-${fileiras - 1})");
        fileiraEscolhida = int.parse(stdin.readLineSync() as String);
        if (fileiraEscolhida < 0 || fileiraEscolhida > (fileiras - 1)) {
          print("Número de Fileira inválido!");
        }
      }

      int poltronaEscolhida = -1;
      while (poltronaEscolhida < 0 ||
          poltronaEscolhida > (poltronasPorFileira - 1)) {
        print(
          "Digite o número da poltrona desejada (0-${poltronasPorFileira - 1})",
        );
        poltronaEscolhida = int.parse(stdin.readLineSync() as String);
        if (poltronaEscolhida < 0 ||
            poltronaEscolhida > (poltronasPorFileira - 1)) {
          print("Número de poltrona inválida!");
        }
      }
      if (teatro[fileiraEscolhida][poltronaEscolhida] == "X") {
        print("POLTRONA JÁ ESCOLHIDA");
        continue;
      }

      print("        Mapa do Teatro");
      print("------------------------------");
      print("------------palco------------\n");

      for (var fileira = 0; fileira < fileiras; fileira++) {
        var fileiraP = '';
        for (var poltrona = 0; poltrona < poltronasPorFileira; poltrona++) {
          if ((fileira == fileiraEscolhida) &&
              (poltrona == poltronaEscolhida)) {
            teatro[fileira][poltrona] = 'X';
            fileiraP += 'P($fileira$poltrona): ${teatro[fileira][poltrona]} | ';
          } else {
            fileiraP += 'P($fileira$poltrona): ${teatro[fileira][poltrona]} | ';
          }
        }
        print(fileiraP);
      }
      print("\n");
      print("--------final do teatro-------\n");
    }
  }
}
