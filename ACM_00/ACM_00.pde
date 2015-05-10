/**
 * ACM 00
 * Eduardo Morais 2012
 * para Processing 2.0
 *
 * Desenha linhas verticais na posição horizontal do rato. A cor é aleatória.
 *
 */
 
// Função executada no início:
void setup() {
  size(800,400); // tamanho da janela
  background(0); // cor de fundo
  smooth(); // linhas suaves
  frameRate(50); // velocidade de execução (da função draw())
}


// Função executada repetidamente:
void draw() {
 
 // se a posição do rato estiver dentro da janela:
 if (mouseX >= 0 && mouseX <= width) {

  // define valores inteiros aleatórios de 0 a 255:
  int r = int(random(0,255));
  int g = int(random(0,255));
  int b = int(random(0,255)); 

  // cor da linha:
  stroke(r, g, b);

  // desenha a linha:
  line(mouseX, 0, mouseX, height);
 }
}
