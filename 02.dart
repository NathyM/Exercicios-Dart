import 'dart:io';
import 'dart:math';

int factorial(int numeros) {
  return numeros == 1 ? 1 : numeros * factorial(numeros - 1);
}

void main() {
  print("Informe a quantidade de termos desejada");
  var numeros = int.tryParse(stdin.readLineSync()!);

  var total = 0.0;
  for (var i = 1; i <= numeros!; i++) {
    int num = i * 2 + 1;
    int den = i * 5;
    int exp = i * 4;

    double valor = pow(num, factorial(exp)) / den;
    total += valor;
  }
  print("O total é: $total");
}
