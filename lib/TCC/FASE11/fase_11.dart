// FEITO SOMENTE COM O QUE FOI VISTO ATÉ O MOMENTO

// FALTA FAZER O TOTAL DE CLIENTES ATENDIDOS

import 'dart:io';

void main() {
  bool continua = true;
  int totalClientesAtendidos = 0;

  print("Bem vindo ao autoatendimento do Cuidapet");

  print('Digite o seu nome:');
  var nome = stdin.readLineSync();

  int usuario = 0;
  String codigoAcesso = "";
  double valorTotalOS = 0.0;
  int opcao1 = 0;
  List<String> itensCarrinhoDeCompra = [];
  List<double> valoresDosItensCarrinhoDeCompra = [];
  while (continua) {
    if (nome != "cuidapetrestrito") {
      usuario = 1;
    } else {
      usuario = 2; // Cliente com Acesso direto para ABERTURA DE OS
    }

    totalClientesAtendidos++;

    switch (usuario) {
      case 1:
        // INICIO DO MENU PARA CLIENTES
        bool menu1 = true;
        while (menu1) {
          print("Menu de Acesso\n");
          print("1 - Ver promoções");
          print("2 - Solicitar serviço");
          print("3 - Listar Carrinho");
          print("4 - Finalizar carrinho de compra");
          print("0 - Sair");

          print("\nDigite a opção desejada: ");

          opcao1 = int.parse(stdin.readLineSync() as String);

          if (opcao1 == 1) {
            print("\nMENU\n");
            print(
              "101 - Ração Royal Canin Indoor Para Cães Adultos De Porte Mini De Ambientes Internos 7,5kg na promoção pelo preço de R\$ 290,00.",
            );
            print(
              "102 - Ração Royal Canin Sterilised para Gatos Adultos Castrados e com o valor promocional de R\$ 492,00.",
            );
            print(
              "103 - Bifinho Keldog para Cães Porte Pequeno Sabor Carne e Cereais por R\$23,92.",
            );
            print(
              "104 - Fraldas Descartáveis Super Secão para Cães Machos com 12 Unidades R\$ 38,61.\n\n",
            );
            print("8 – Adicionar ao carrinho de compras");
            print("0 - voltar");
            print("\nDigite a opção desejada: ");

            int subMenu1Prod = int.parse(stdin.readLineSync() as String);

            if (itensCarrinhoDeCompra.length == 3) {
              print(
                " o seu carrinho de compras já está cheio. Acesso restrito",
              );
              menu1 = false;
            }
            if (subMenu1Prod == 8 && itensCarrinhoDeCompra.length < 3) {
              print("Entre com o código do item desejado:");
              int codprod = int.parse(stdin.readLineSync() as String);
              switch (codprod) {
                case 101:
                  itensCarrinhoDeCompra.add(
                    "Código 101 - Ração Royal Canin Indoor Para Cães Adultos De Porte Mini De Ambientes Internos 7,5kg ",
                  );
                  valoresDosItensCarrinhoDeCompra.add(290);
                  break;

                case 102:
                  itensCarrinhoDeCompra.add(
                    "Código 102 - Ração Royal Canin Sterilised para Gatos Adultos Castrados",
                  );
                  valoresDosItensCarrinhoDeCompra.add(492);
                  break;
                case 103:
                  itensCarrinhoDeCompra.add(
                    "Código 103 - Bifinho Keldog para Cães Porte Pequeno Sabor Carne e Cereais ",
                  );
                  valoresDosItensCarrinhoDeCompra.add(23.92);
                  break;
                case 104:
                  itensCarrinhoDeCompra.add(
                    "Código 104 - Fraldas Descartáveis Super Secão para Cães Machos com 12 Unidades",
                  );
                  valoresDosItensCarrinhoDeCompra.add(38.61);
                  break;

                default:
                  print("Código inválido!");
              }
            } else if (subMenu1Prod == 0) {
              menu1 = false;
            } else {
              print("Opção inválida!");
            }
          } else if (opcao1 == 2) {
            print("\nMENU\n");
            print("Código 201 - Banho e tosa - R\$ 55,99.");
            print("Código 202 - Tosa higienica -R\$ 12,99.");
            print("Código 203 - Hidratação dos pelos - R\$ 20,99..");
            print(
              "104 - Fraldas Descartáveis Super Secão para Cães Machos com 12 Unidades R\$ 38,61.\n\n",
            );
            print("8 – Adicionar ao carrinho de compras");
            print("0 - voltar");
            print("\nDigite a opção desejada: ");

            int subMenu2Prod = int.parse(stdin.readLineSync() as String);

            if (itensCarrinhoDeCompra.length == 3) {
              print(
                " o seu carrinho de compras já está cheio. Acesso restrito",
              );
              menu1 = false;
            }
            if (subMenu2Prod == 8 && itensCarrinhoDeCompra.length < 3) {
              print("Entre com o código do item desejado:");
              int codServ = int.parse(stdin.readLineSync() as String);
              switch (codServ) {
                case 201:
                  itensCarrinhoDeCompra.add("Código 201 - Banho e tosa ");
                  valoresDosItensCarrinhoDeCompra.add(55.99);
                  break;

                case 202:
                  itensCarrinhoDeCompra.add("Código 202 - Tosa higienica ");
                  valoresDosItensCarrinhoDeCompra.add(12.99);
                  break;
                case 203:
                  itensCarrinhoDeCompra.add(
                    "Código 203 - Hidratação dos pelos",
                  );
                  valoresDosItensCarrinhoDeCompra.add(20.99);
                  break;

                default:
                  print("Código inválido!");
              }
            } else if (subMenu2Prod == 0) {
              menu1 = false;
            } else {
              print("Opção inválida!");
            }
          } else if (opcao1 == 3) {
            // TODO CONTINUAR A PARTIR DAQUI
          } else if (opcao1 == 4) {
          } else if (opcao1 == 0) {}

          // FIM DO MENU PARA CLIENTES

          break;
        }
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
  print("Total de clientes atendidos hoje: $totalClientesAtendidos");
}
