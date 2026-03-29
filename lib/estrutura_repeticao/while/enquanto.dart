void main() {
  for (var idade1 = 0; idade1 < 18; idade1++) {
    print('Você ainda não pode tirar a habilitação $idade1');
  }

  var idade = 0;
  while (idade < 18) {
    print('Você ainda não pode tirar a habilitação $idade');
    idade++;
  }
}
