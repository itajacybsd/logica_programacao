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
}
