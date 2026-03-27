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

  int usuario = 0;
  String codigoAcesso = "";
  double valorTotalOS = 0.0;

  if (nome != "cuidapetrestrito") {
    print("Menu de Acesso\n");
    print("1 - Cliente");
    print("2 - Funcionario");

    print("\nSelecione o tipo de usuário: ");

    usuario = int.parse(stdin.readLineSync() as String);
  } else {
    usuario = 2; // Cliente com Acesso direto para ABERTURA DE OS
  }

  if (nome == "cuidapetrestrito") {
    usuario = 2; // Cliente com Acesso direto para ABERTURA DE OS
  } else if (usuario == 2) {
    print("Digite o código de acesso para funcionários: ");
    codigoAcesso = stdin.readLineSync() as String;
    if (codigoAcesso == "cuidapetrestrito") {
      usuario = 2; // Acesso para ABERTURA DE OS
    } else {
      usuario = 1; // Acesso para clientes
    }
  }

  switch (usuario) {
    case 1:
      // INICIO DO MENU PARA CLIENTES

      print("\nMENU\n");
      print("1 - Ver Ofertas de Produtos");
      print("2 - Ver Ofertas de Serviços");
      print("3 - Ver Ofertas de Roupas");
      print("4 - Ver Novos Serviços");
      print("5 - Promoção I 10% de desconto");
      print("6 - Promoção II 20% de desconto");
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
      } else if (opcao == 5) {
        print(
          "Compre 1 saco de 15kg de ração ()R\$ 345,99 e ganhe 10% de desconto no banho",
        );
      } else if (opcao == 6) {
        print(
          "Compre 1 banho com tosa higienica e hidratação e ganhe 20% de desconto no valor total",
        );
      } else {
        print("Opção Inválida");
      }
      // FIM DO MENU PARA CLIENTES

      break;
    case 2:
      // INICIO DO MENU PARA ABERTURA DE OS
      print("\nMENU DE ABERTURA DE OS\n");
      print("O cliente comprou Racao Royal Canin Indor 7,5 kg? (S/N)");
      String resposta1 = stdin.readLineSync() as String;
      print("O cliente solicitou banho e tosa? (S/N)");
      String resposta2 = stdin.readLineSync() as String;
      print("O cliente solicitou tosa higienica? (S/N)");
      String resposta3 = stdin.readLineSync() as String;
      print("O cliente solicitou hidratação de pelo? (S/N)");
      String resposta4 = stdin.readLineSync() as String;
      if (resposta1 == "S") {
        valorTotalOS = valorTotalOS + 280.00;
      }
      if (resposta3 == "S") {
        valorTotalOS = valorTotalOS + 10.99;
      }
      if (resposta4 == "S") {
        valorTotalOS = valorTotalOS + 39.99;
      }
      if (resposta2 == "S") {
        valorTotalOS =
            valorTotalOS *
            0.80; // Aplicando o desconto de 20% para banho e tosa
      }
      print("Valor total da OS: R\$ $valorTotalOS");

      break;
    // FIM DO MENU PARA ABERTURA DE OS
    default:
      print("Opção inválida. Por favor, escolha 1 ou 2.");
  }
}
