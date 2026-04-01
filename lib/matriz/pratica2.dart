/* 
    Continuando o exemplo da venda de ingresso, agora o seu sistema deve solicitar 
    ao usuário qual poltrona ele deseja comprar. 
    O sistema então deve ocultar a poltrona comprada. 
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

  print("Digite o número da fileira desejada (0-${fileiras - 1})");
  int fileiraEscolhida = int.parse(stdin.readLineSync() as String);

  print("Digite o número da poltrona desejada (0-${poltronasPorFileira - 1})");
  int poltronaEscolhida = int.parse(stdin.readLineSync() as String);

  print("        Mapa do Teatro");
  print("------------------------------");
  print("------------palco------------\n");

  for (var fileira = 0; fileira < fileiras; fileira++) {
    var fileiraP = '';
    for (var poltrona = 0; poltrona < poltronasPorFileira; poltrona++) {
      if ((fileira == fileiraEscolhida) && (poltrona == poltronaEscolhida)) {
        fileiraP += '******** | ';
      } else {
        fileiraP += 'P($fileira$poltrona): ${teatro[fileira][poltrona]} | ';
      }
    }
    print(fileiraP);
  }
  print("\n");
  print("--------final do teatro-------\n");
}
