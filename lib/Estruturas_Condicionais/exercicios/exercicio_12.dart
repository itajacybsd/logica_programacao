import 'dart:io';

void main(List<String> args) {
  print("Você precisa de atendimento prioritário? (sim/não): ");
  String atendimento = stdin.readLineSync() as String;

  if (atendimento == "sim") {
    print("Vá para os caixas 1, 2, ou 3");
  } else {
    print("Vá para qualquer caixa, exceto os 1, 2, e 3, que são prioritários");
  }
}
