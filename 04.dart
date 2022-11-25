import 'dart:io';

void main() {
  var total_de_alunos = 0;
  var total_de_alunos_f = 0;
  var quantidade_aprovados = 0;
  var soma_media_alunos = 0.0;
  var soma_media_f = 0.0;

  var matricula_melhor_f = '';
  var melhor_media_f = 0.0;
  var matricula_melhor_m = '';
  var melhor_media_m = 0.0;

  var matricula = '';
  while (matricula != '00000') {
    print("Entrada ${total_de_alunos + 1} \n");

    print("Informe a matricula");
    matricula = stdin.readLineSync()!;
    if (matricula == '00000') {
      break;
    }

    print("Informe o nome");
    var nome = stdin.readLineSync()!;

    print("Informe o sexo (M/F)");
    var sexo = stdin.readLineSync()!;

    print("Informe a nota 1");
    var nota1 = double.tryParse(stdin.readLineSync()!);

    print("Informe a nota 2");
    var nota2 = double.tryParse(stdin.readLineSync()!);

    print("Informe a nota 3");
    var nota3 = double.tryParse(stdin.readLineSync()!);

    print("Informe a quantidade de faltas");
    var faltas = int.tryParse(stdin.readLineSync()!);
    print('\n');

    var media = (nota1! + nota2! + nota3!) / 3;

    total_de_alunos += 1;
    soma_media_alunos += media;

    if (media >= 7.0 && faltas! <= 18) {
      quantidade_aprovados += 1;
    }

    if (sexo.toUpperCase() == 'F') {
      total_de_alunos_f += 1;
      soma_media_f += media;
      if (faltas! <= 18 && media > melhor_media_f) {
        matricula_melhor_f = matricula;
      }
    } else if (sexo.toUpperCase() == 'M') {
      if (faltas! <= 18 && media > melhor_media_m) {
        matricula_melhor_m = matricula;
      }
    }
  }

  print("a) Media da turma: ${soma_media_alunos / total_de_alunos}");
  print("b) Percentual de aprovados: ${quantidade_aprovados * 100 / total_de_alunos}");
  print("c) Matricula da maior média aprovada(F): ${matricula_melhor_f}");
  print("c) Matricula da maior média aprovada(M): ${matricula_melhor_m}");
  print("d) Média sexo feminino: ${soma_media_f * 100 / total_de_alunos_f}");
}
