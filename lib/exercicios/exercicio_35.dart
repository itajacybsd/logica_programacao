import 'dart:io';

void main(List<String> args) {
  print("Digite uma letra:");
  String letraDigitada = stdin.readLineSync() as String;
  String resultado = verificaSeEhVogal(letraDigitada);
  print("A letra digitada: $resultado");
}

String verificaSeEhVogal(String letra) {
  String resultado;
  if (letra == "a" ||
      letra == "e" ||
      letra == "i" ||
      letra == "o" ||
      letra == "u" ||
      letra == "A" ||
      letra == "E" ||
      letra == "I" ||
      letra == "O" ||
      letra == "U") {
    resultado = "É UMA VOGAL";
  } else {
    resultado = " NÃO É UMA VOGAL";
  }
  return resultado;
}
