/**
 * ACM 01
 * Eduardo Morais 2012
 * para Processing 2.0
 *
 * Desenha linhas verticais aleatórias. A cor é aleatória.
 * Tem teclas para limpar o ecrã e para limpar a imagem.
 *
 */


// declara variavel global para guardar o numero de imagens gravadas:
int numImagem = 0;


void setup() {
  size(400,400);
  frameRate(5);
  background(0);
}


void draw() {
  // cor do traço:
  int r = randomcor();
  int g = randomcor();
  int b = randomcor();
  stroke(r, g, b);

  // posição horizontal:
  int posX = int(random(0, width));

  // desenha linha:
  line(posX,0,posX,height);
}


// função que é executada sempre que uma tecla é largada:
void keyReleased() {
  // se a tecla for o L (maiúsculo ou minúsculo):
  if (key == 'l' || key == 'L') {
    background(0); // apaga a imagem
  }

  // se a tecla for o S (maiúsculo ou minúsculo):
  if (key == 's' || key == 'S') {
    
    // grava imagem com este nome:
    save("imagem-" + numImagem + ".png");

    // escreve mensagem na consola:
    println("Imagem " + numImagem + " gravada!");
    // incrementa a varioável global para garantir que a seguir será gravado um ficheiro diferente:
    numImagem = numImagem + 1;
  }
}


// função que devolve um número inteiro aleatório entre 0 e 255:
int randomcor() {
  return int(random(0,255));
}
