import 'dart:io';

void main() {
  int totalClientesAtendidos = 0;
  double valorTotalDeVendasDoDia = 0;
  bool primeiro = true;
  int usuario = 0;
  int opcao1 = 0;
  while (primeiro) {
    List<String> itensCarrinhoDeCompra = [];
    List<double> valoresDosItensCarrinhoDeCompra = [];
    print("Bem vindo ao autoatendimento do Cuidapet");

    print('Digite o seu nome:');
    var nome = stdin.readLineSync();
    if (nome != "cuidapetrestrito") {
      usuario = 1; // Cliente
    } else {
      usuario = 2; // Funcionario
    }

    bool segundo = true;
    while (segundo) {
      switch (usuario) {
        case 1:
          // INICIO DO MENU PARA CLIENTES
          bool menu1 = true;
          while (menu1) {
            menu();

            opcao1 = int.parse(stdin.readLineSync() as String);

            if (opcao1 == 1) {
              bool menuProdutos = true;
              while (menuProdutos) {
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
                print("\nDigite a opção desejada(8/0): ");

                int subMenu1Prod = int.parse(stdin.readLineSync() as String);

                if (subMenu1Prod == 8 && itensCarrinhoDeCompra.length == 3) {
                  print(
                    "\n##########################################################",
                  );
                  print(
                    "#o seu carrinho de compras já está cheio. Acesso restrito#",
                  );
                  print(
                    "##########################################################\n",
                  );
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
                      print(
                        "\n ==> Item adicionado ao carrinho com sucesso! <==\n",
                      );
                      break;

                    case 102:
                      itensCarrinhoDeCompra.add(
                        "Código 102 - Ração Royal Canin Sterilised para Gatos Adultos Castrados",
                      );
                      valoresDosItensCarrinhoDeCompra.add(492);
                      print(
                        "\n ==> Item adicionado ao carrinho com sucesso! <==\n",
                      );
                      break;
                    case 103:
                      itensCarrinhoDeCompra.add(
                        "Código 103 - Bifinho Keldog para Cães Porte Pequeno Sabor Carne e Cereais ",
                      );
                      valoresDosItensCarrinhoDeCompra.add(23.92);
                      print(
                        "\n ==> Item adicionado ao carrinho com sucesso! <==\n",
                      );
                      break;
                    case 104:
                      itensCarrinhoDeCompra.add(
                        "Código 104 - Fraldas Descartáveis Super Secão para Cães Machos com 12 Unidades",
                      );
                      valoresDosItensCarrinhoDeCompra.add(38.61);
                      print(
                        "\n ==> Item adicionado ao carrinho com sucesso! <==\n",
                      );
                      break;

                    default:
                      print("Código inválido!");
                  }
                } else if (subMenu1Prod == 0) {
                  menuProdutos = false;
                } else {
                  if (subMenu1Prod == 8 && itensCarrinhoDeCompra.length == 3) {
                  } else {
                    print("******************************");
                    print("* Opção de Produto inválida! *");
                    print("******************************");
                  }
                }
              }
            } else if (opcao1 == 2) {
              bool menuServicos = true;
              while (menuServicos) {
                print("\nMENU\n");
                print("Código 201 - Banho e tosa - R\$ 55,99.");
                print("Código 202 - Tosa higienica -R\$ 12,99.");
                print("Código 203 - Hidratação dos pelos - R\$ 20,99. \n\n");

                print("8 – Adicionar ao carrinho de compras");
                print("0 - voltar");
                print("\nDigite a opção desejada (8/0): ");

                int subMenu2Prod = int.parse(stdin.readLineSync() as String);

                if (itensCarrinhoDeCompra.length == 3) {
                  print(
                    "##########################################################",
                  );
                  print(
                    "#o seu carrinho de compras já está cheio. Acesso restrito#",
                  );
                  print(
                    "##########################################################",
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
                      print(
                        "\n ==> Item adicionado ao carrinho com sucesso! <==\n",
                      );
                      break;

                    case 202:
                      itensCarrinhoDeCompra.add("Código 202 - Tosa higienica ");
                      valoresDosItensCarrinhoDeCompra.add(12.99);
                      print(
                        "\n ==> Item adicionado ao carrinho com sucesso! <==\n",
                      );
                      break;
                    case 203:
                      itensCarrinhoDeCompra.add(
                        "Código 203 - Hidratação dos pelos",
                      );
                      valoresDosItensCarrinhoDeCompra.add(20.99);
                      print(
                        "\n ==> Item adicionado ao carrinho com sucesso! <==\n",
                      );

                      break;

                    default:
                      print("Código inválido!");
                  }
                } else if (subMenu2Prod == 0) {
                  menuServicos = false;
                } else {
                  if (subMenu2Prod == 8 && itensCarrinhoDeCompra.length == 3) {
                  } else {
                    print("******************************");
                    print("* Opção de Serviço inválida! *");
                    print("******************************");
                  }
                }
              }
            } else if (opcao1 == 3) {
              if (itensCarrinhoDeCompra.isEmpty) {
                print("Carrinho está vazio!");
              } else {
                double valorDaCompra = 0;
                for (
                  var item = 0;
                  item < itensCarrinhoDeCompra.length;
                  item++
                ) {
                  print("item ${item + 1} - ${itensCarrinhoDeCompra[item]}");
                  print(
                    "item ${item + 1} - valor: ${valoresDosItensCarrinhoDeCompra[item]}",
                  );
                  print("------------------------------------------------");
                  valorDaCompra =
                      valorDaCompra + valoresDosItensCarrinhoDeCompra[item];
                }
                print("Soma dos Produtos/Serviços: $valorDaCompra");
                print("=========================================");
              }
            } else if (opcao1 == 4) {
              String formaPagamento = "";
              while (formaPagamento != "C" && formaPagamento != "D") {
                print(
                  "\nEntre com a forma de pagamento(D-Dinheiro, C-Cartão):",
                );
                formaPagamento = stdin.readLineSync() as String;
                double totalAPagar = 0;
                for (
                  var item = 0;
                  item < itensCarrinhoDeCompra.length;
                  item++
                ) {
                  totalAPagar =
                      totalAPagar + valoresDosItensCarrinhoDeCompra[item];
                }
                if (formaPagamento == "D") {
                  totalAPagar = desconto(totalAPagar);

                  print("\n=========================================");
                  print("Total à pagar: $totalAPagar");
                  print("=========================================\n");
                  totalClientesAtendidos++;
                  valorTotalDeVendasDoDia =
                      valorTotalDeVendasDoDia + totalAPagar;
                  segundo = false;
                } else if (formaPagamento == "C") {
                  print("\n=========================================");
                  print("Total à pagar: $totalAPagar");
                  print("=========================================\n");
                  totalClientesAtendidos++;
                  valorTotalDeVendasDoDia =
                      valorTotalDeVendasDoDia + totalAPagar;
                  segundo = false;
                } else {
                  print("\n Opção Inválida!\n");
                }
              }
            } else if (opcao1 == 0) {
              menu1 = false;
              primeiro = false;
              segundo = false;
            }
            break;
          }
        case 2:
          // INICIO DO MENU PARA FUNCIONARIOS
          print("\nAREA RESTRITA DOS FUNCIONARIOS\n");
          print("Digite o nome do Cliente:");
          String nomeCliente = stdin.readLineSync() as String;
          print("\nDigite o valor da compra do Cliente:");
          double valorCompraCliente = double.parse(
            stdin.readLineSync() as String,
          );

          String formaPagamento = "";
          while (formaPagamento != "C" && formaPagamento != "D") {
            print("\nEntre com a forma de pagamento(D-Dinheiro, C-Cartão):");
            formaPagamento = stdin.readLineSync() as String;
            double totalAPagar = valorCompraCliente;

            if (formaPagamento == "D") {
              totalAPagar = desconto(totalAPagar);
              print("\n=========================================");
              print("Total à pagar: $totalAPagar");
              print("=========================================\n");
              totalClientesAtendidos++;
              valorTotalDeVendasDoDia = valorTotalDeVendasDoDia + totalAPagar;
              segundo = false;
            } else if (formaPagamento == "C") {
              print("\n=========================================");
              print("Total à pagar: $totalAPagar");
              print("=========================================\n");
              totalClientesAtendidos++;
              valorTotalDeVendasDoDia = valorTotalDeVendasDoDia + totalAPagar;
              segundo = false;
            } else {
              print("\n Opção Inválida!\n");
            }
          }
          break;
      }
    }
  }
  print("\n============================================================\n");
  print("Total de clientes atendidos hoje: $totalClientesAtendidos");
  print("Valor Total das vendas no dia: $valorTotalDeVendasDoDia");
  print("\n============================================================\n");
}

void menu() {
  print("Menu de Acesso\n");
  print("1 - Ver promoções");
  print("2 - Solicitar serviço");
  print("3 - Listar Carrinho");
  print("4 - Finalizar carrinho de compra");
  print("0 - Sair");

  print("\nDigite a opção desejada: ");
}

double desconto(double valor) {
  return valor * 0.9;
}
