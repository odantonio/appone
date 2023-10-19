import 'dart:math';

class GeradorRandom {
  static int geradorNumeroAleatorio(int maxNumber) {
    Random gerado = Random();
    return gerado.nextInt(maxNumber);
  }

  static int quantidadeClicks() {
    int click = 0;
    click = click + 1;
    return click;
  }
}
