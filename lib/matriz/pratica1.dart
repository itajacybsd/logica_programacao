// sistema para teatro
//fileira e poltronas
// fileira 0, poltrona1
// fileira 0, poltrona2

// o teatro terá 5 fileiras e cada fileira terá 6 poltronas
void main(List<String> args) {
  // var teatro = [
  //   [0, 1, 2, 3, 4, 5],
  //   [0, 1, 2, 3, 4, 5],
  //   [0, 1, 2, 3, 4, 5],
  //   [0, 1, 2, 3, 4, 5],
  //   [0, 1, 2, 3, 4, 5],
  // ];

  // print(teatro[0][0]);
  // print(teatro[0][1]);
  // print(teatro[0][2]);

  var teatro = [];
  var fileiras = 7;
  var poltronasPorFileira = 10;

  for (var fileira = 0; fileira < fileiras; fileira++) {
    var fileiraTeatro = [];
    for (var poltrona = 0; poltrona < poltronasPorFileira; poltrona++) {
      fileiraTeatro.add(0);
    }
    teatro.add(fileiraTeatro);
  }
  print("        Mapa do Teatro");
  print("------------------------------");
  print("------------palco------------\n");

  for (var fileira = 0; fileira < fileiras; fileira++) {
    var fileiraP = '';
    for (var poltrona = 0; poltrona < poltronasPorFileira; poltrona++) {
      fileiraP += 'P($fileira$poltrona): ${teatro[fileira][poltrona]} | ';
    }
    print(fileiraP);
  }
  print("\n");
  print("--------final do teatro-------\n");
}
