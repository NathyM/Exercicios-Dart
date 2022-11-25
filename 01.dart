import 'dart:io';

void main() {
  const bolosPrecos = {
    'ovos': 5.5,
    'chocolate': 7.5,
    'cenoura': 6.5,
  };

  print("Faça o seu pedido separando os itens por virgula.");
  var ordem = stdin.readLineSync();

  var total = 0.0;
  ordem!.split(',').forEach((item) => {
        if (bolosPrecos.containsKey(item))
          {total = total + bolosPrecos[item]!}
        else
          {print("O $item não está no cardápio.")}
      });

  print("O valor total é $total");
}
