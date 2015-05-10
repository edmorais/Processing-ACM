/**
 * ACM 02
 * Eduardo Morais 2012
 * para Processing 2.0
 *
 * Demonstra uma condição: muda a cor conforme se o rato está dentro ou fora da janela. 
 *
 */

// declara variável do tipo color com a cor (RGB 0-255):
color cor = color(255,0,0);

void setup() {
 size(500,500);
 background(0); 
}


void draw() {
  println(mouseX + ", " + mouseY); // mostra a posição do rato na consola
  
  /* condição:
     é dada uma margem de 10 pixels à posição do rato para que o programa 
     'tenha tempo' de mudar o fundo quando o rato sai.
     isto porque o mouseX e o mouseY só são actualizados quando o rato está
     por cima da janela - mau design por parte dos senhores do processing! 
   */
  if (mouseX > 10 && mouseX < width-10 && mouseY > 10 && mouseY < height-10) {
    background(cor); 
  } else {
    background(0);
  }
  
}
