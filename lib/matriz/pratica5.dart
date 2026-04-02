/*
Ainda em nosso sistema de boletim:
Gostaria que você fizesse 2 alterações: 
1 - Solicite para o cliente o nome do aluno e guarde-o para imprimir no final
2 - Para o aluno passar de ano ele tem que tirar uma média maior que 6, sendo na impressão você deve apresentar
      APROVADO caso ele tenha uma média maior que 6;
      REPROVADO caso ele tenha uma média menor que 6;
*/

import 'dart:io';

void main() {
  // 15 Alunos
  // 6 posições
  // var notasAlunos = List.generate(15, (index) => List.filled(7, 0.0));
  var notasAlunos = List.generate(2, (index) => List.filled(7, 0.0));
  var nomesAlunos = [];
  // Variavel de controle para soma das notas e média de nota
  var totalNotaAluno = 0.0;

  // Loop de alunos
  for (int aluno = 0; aluno < 2; aluno++) {
    // for (int aluno = 0; aluno < 15; aluno++) {
    // Loop das notas
    print("Digite o nome do Aluno:");
    String nomeAluno = stdin.readLineSync() as String;
    nomesAlunos.add(nomeAluno);
    for (int nota = 0; nota < 6; nota++) {
      print('Digite a ${nota + 1} nota do aluno ${aluno + 1}: ');
      // Solicitamos a nota
      var notaAlunoStr = stdin.readLineSync() as String;
      // Adicionamos na nossa matriz
      notasAlunos[aluno][nota] = double.parse(notaAlunoStr);
      // somamos o total da nota
      totalNotaAluno = totalNotaAluno + notasAlunos[aluno][nota];
    }
    // Calculamos a média do aluno e adicionamos na 7 posição
    notasAlunos[aluno][6] = totalNotaAluno / 6;
    // Zeramos a nota
    totalNotaAluno = 0.0;
  }

  // for (int aluno = 0; aluno < 15; aluno++) {
  for (int aluno = 0; aluno < 2; aluno++) {
    print("Aluno: ${aluno + 1} - ${nomesAlunos[aluno]}:");
    for (int nota = 0; nota < 6; nota++) {
      print('Nota prova ${nota + 1}: ${notasAlunos[aluno][nota]}');
    }
    print('A média do aluno ${aluno + 1}: ${notasAlunos[aluno][6]} \n');
    if (notasAlunos[aluno][6] > 6) {
      print("ALUNO APROVADO");
    } else {
      print("ALUNO REPROVADO");
    }
  }
}
