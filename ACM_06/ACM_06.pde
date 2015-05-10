/**
 * ACM 06
 * Eduardo Morais 2012
 * para Processing 2.0
 *
 * Duas fotos à sorte. Qualquer tecla faz surgir novas imagens.
 *
 */

// declara objectos do tipo PImage (imagem)
PImage esquerda, direita;

// SETUP:
void setup() {
	size(800,500);
	carregaImagens();
}


// DRAW - neste caso não há nada em loop:
void draw() {}


// Sempre que uma tecla é largada:
void keyReleased() {
	carregaImagens();
}

// Função que carrega as imagens - chamada no setup e quando se larga uma tecla:
void carregaImagens() {
	background(0);

	// carrega as imagens, tiradas à sorte
	// estas deverão chamar-se 1.jpg, 2.jpg, etc... até ao número definido no random():
	esquerda = loadImage("esquerda/"+int(random(1,10))+".jpg");
	direita = loadImage("direita/"+int(random(1,10))+".jpg");

	// mostra as imagens, mantendo a proporção e centradas na vertical:
	image(esquerda, 0, (height-altura(esquerda))/2, width/2, altura(esquerda));
	image(direita, width/2, (height-altura(direita))/2, width/2, altura(direita));
}


// Função que obtém a altura certa para uma imagem que tenha metade da largura da janela
// de modo a manter a proporção:
int altura(PImage img) {
  return int(float(img.height)/img.width*(width/2));
}
