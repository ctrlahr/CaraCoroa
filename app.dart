import 'dart:io';
import 'dart:math';

void main() {
  // Randomizando todo o processo
  var random = Random();
  var escolhasPossiveis = ['cara', 'coroa'];
  var escolha = random.nextInt(escolhasPossiveis.length); 

  // Escolha de lado, etc
  print('0 - Cara, 1 - Coroa');
  print('Escolha o lado da moeda que você quer...');
  dynamic resposta = stdin.readLineSync();
  int respostaint = int.parse(resposta);
  
  if(respostaint == 0 && escolha == 0) {
    print('Caiu cara, parabéns você ganhou!!');
  } else if(respostaint == 1 && escolha == 1) {
    print('Caiu coroa, parabéns você ganhou!!');
  } else if(respostaint == 0 && escolha == 1) {
    print('Caiu coroa, você perdeu');
  } else if(respostaint == 1 && escolha == 0) {
    print('Caiu cara, você perdeu');
  }
}