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
  print("\nDigite a opção desejada: ");

  int opcao = int.parse(stdin.readLineSync() as String);

  if (opcao == 1) {
    print(
      "Ração Royal Canin Indor 7,5 kg com o valor promocional de R\$ 280,00",
    );
  } else {
    if (opcao == 2) {
      print("Banho e tosa na promoção pelo preço do banho R\$ 50,00");
    } else {
      print("Opção Inválida");
    }
  }
}
