/**
 * ACM 03
 * Eduardo Morais 2012
 * para Processing 2.0
 *
 * Desenha um gradiente cinza e anima-o em loop.
 *
 */
 
// valores de início e fim do gradiente (luma 0-255):  
int valor1 = 0;
int valor2 = 255;
// velocidade da animação (incremento a somar/subtrair aos valores anteriores a cada draw()):
int incremento = 1;

// SETUP
void setup() {
  size(500,500);
  background(0);
  frameRate(25);
}

// DRAW
void draw() {
  // chama a função que desenha o gradiente (definida abaixo):
  degrade(valor1, valor2);
  
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
 *  Função para desenhar um gradiente cinza.
 *
 *  Argumentos:
 *  inicio: valor inicial do gradiente;
 *  fim: valor final do gradiente.
 *  
 */
void degrade(int inicio, int fim) {
  
  // numero da linha a desenhar. 
  // vamos incrementá-lo de modo a desenhar o gradiente linha a linha:
  int linha = 0;
  
  // ciclo - enquanto o numero da linha for menor que a largura do ecrã:
  while (linha < width) {
    
    // define a cor da linha através de uma regra de três -
    // sendo que a linha está entre 0 e a largura, a que cor corresponde entre a de inicio e a de fim?
    int cor = int(map(linha, 0, width, inicio, fim));
    
    // define o traço da cor obtida e desenha uma linha vertical:
    stroke(cor);
    line(linha, 0, linha, height);
    
    // avancemos para a linha seguinte (senão ficamos com um loop infinito!):
    linha++; // linha = linha + 1;
  }
  
}
