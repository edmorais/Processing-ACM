/**
 * ACM 04
 * Eduardo Morais 2012
 * para Processing 2.0
 *
 * Desenha um gradiente entre duas cores e anima-o em loop.
 *
 */

// cores entre as quais vamos fazer um gradiente (RGB 0-255):
color cor1 = color(255,100,0);
color cor2 = color(0,0,255);
// valores de início e fim do gradiente (alpha 0-255):
int valor1 = 0;
int valor2 = 255;
// velocidade da animação (incremento a somar/subtrair aos valores anteriores a cada draw()):
int incremento = 1;


// SETUP
void setup() {
  size(500,500);
  // size(displayWidth,displayHeight); // para encher o ecrã.
  background(0);
  frameRate(25);
}

// DRAW
void draw() {
  // chama a função que desenha o gradiente (definida abaixo):
  degrade(cor1, cor2, valor1, valor2);

  // actualiza os valores a usar na função no próximo draw:
  valor1 = valor1 + incremento;
  valor2 = valor2 - incremento;

  // inverte o sentido da variação se se atingir o valor máximo:
  if (valor1 == 255) {
   incremento = -1;
  }

  // inverte o sentido da variação se se atingir o valor mínimo:
  if (valor1 == 0) {
   incremento = 1;
  }
}

/**
 *  Função para desenhar um gradiente de cor.
 *  A nossa técnica aqui será desenhar primeiro o fundo com a primeira cor,
 *  e desenhar linhas com a segunda cor, variando o grau de transparência.
 *
 *  Argumentos:
 *  fundo: cor de fundo;
 *  linha: cor da linha;
 *  inicio: valor inicial da opacidade do gradiente;
 *  fim: valor final da opacidade do gradiente.
 *
 */
void degrade(color fundo, color linha, int inicio, int fim) {
  // preencher o fundo. pim:
  background(fundo);

  // numero da posição horizontal onde vamos desenhar a linha.
  // vamos incrementá-lo de modo a desenhar o gradiente linha a linha:
  int posX = 0;

  // ciclo - enquanto o numero da posição for menor que a largura do ecrã:
  while (posX < width) {

    // define a opacidade da linha através de uma regra de três -
    // sendo que a posição horizontal está entre 0 e a largura,
    // a que opacidade corresponde entre a de inicio e a de fim?
    int transp = int(map(posX, 0, width, inicio, fim));

    // define o traço da da linha e com a opacidade obtida e desenha uma linha vertical:
    stroke(linha, transp);
    line(posX, 0, posX, height);

    // avancemos para a posição seguinte (senão ficamos com um loop infinito!):
    posX++;
  }
}
