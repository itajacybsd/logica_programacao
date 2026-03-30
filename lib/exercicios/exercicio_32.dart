// FEITO COM O QUE FOI VISTO ATE O MOMENTO

import 'dart:io';

void main(List<String> args) {
  List<double> fidelizacao = [];
  int pagamentos = 0;

  while (pagamentos < 10) {
    print("Digite o valor do pagamento:");
    double pagamento = double.parse(stdin.readLineSync() as String);
    if (pagamento > 0) {
      pagamentos++;
      fidelizacao.add(pagamento);
    }
  }
  print("Hoje o seu almoço é uma cortesia da casa, Parabéns!");
}
