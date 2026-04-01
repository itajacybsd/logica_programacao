void main() {
  print('inicio');
  for (var i = 0; i < 10; i++) {
    if (i == 5) {
      // volta para o for ignorando o print
      continue;
    }
    if (i == 8) {
      // para e sai do for
      break;
    }
    print(i);
  }
  print('fim');
}
