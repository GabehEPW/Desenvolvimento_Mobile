import 'dart:math';

class Jokenpo {
  static const List<String> opcoes = ['pedra', 'papel', 'tesoura'];

  static String jogar(String escolhaJogador) {
    final random = Random();
    final escolhaPC = opcoes[random.nextInt(3)];

    if (escolhaJogador == escolhaPC) {
      return 'Empate! PC também jogou $escolhaPC';
    }

    if (_vence(escolhaJogador, escolhaPC)) {
      return 'Você ganhou! PC jogou $escolhaPC';
    }

    return 'PC ganhou! PC jogou $escolhaPC';
  }

  static bool _vence(String jogador, String pc) {
    return (jogador == 'pedra' && pc == 'tesoura') ||
        (jogador == 'papel' && pc == 'pedra') ||
        (jogador == 'tesoura' && pc == 'papel');
  }
}
