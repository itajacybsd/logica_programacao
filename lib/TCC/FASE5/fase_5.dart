// FAZENDO SOMENTE COM O QUE FOI VISTO ATÉ O MOMENTO

import 'dart:io';

void main() {
  print('Digite o seu nome:');
  var nome = stdin.readLineSync();

  print('Prezado(a) $nome, seja bem-vindo(a) à nossa loja!\n');

  String mensagem =
      "Oferecemos em nossa loja produtos e serviços para seu PET. Para venda de produtos, procure o colaborador Junior e, para serviços como banho ou tosa, procure o colaborador Neto. Obrigado e esperamos que tenha uma ótima experiência em nossa loja.\n";

  String enderecoCuidaPet = "Av. Dr. Lauro Correa da Silva, 3233";

  print(mensagem);
  print(enderecoCuidaPet);

  print("\nMENU\n");
  print("1 - Ver Ofertas de Produtos");
  print("2 - Ver Ofertas de Serviços");
  print("3 - Ver Ofertas de Roupas");
  print("4 - Ver Novos Serviços");
  print("\nDigite a opção desejada: ");

  int opcao = int.parse(stdin.readLineSync() as String);

  if (opcao == 1) {
    print(
      "Ração Royal Canin Indor 7,5 kg com o valor promocional de R\$ 280,00",
    );
  } else if (opcao == 2) {
    print("Banho e tosa na promoção pelo preço do banho R\$ 50,00");
  } else if (opcao == 3) {
    print("Roupas em oferta - Capa de chuva R\$ 59,99");
  } else if (opcao == 4) {
    print(
      "Novos serviços oferecidos: Hidratação de pelo R\$ 39,99 | Tosa higienica R\$ 10,99 | Tingimento dos pelos por R\$ 59,99",
    );
  } else {
    print("Opção Inválida");
  }
}
