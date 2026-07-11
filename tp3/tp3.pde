// https://www.youtube.com/watch?v=IQACkZg3L58

PImage obra;
int filas = 31;
int circulos = 6;
int agrega = 3;
float separacionExtra = 1.17;
boolean cuadrados = false;

void setup() {
  size(800, 400);
  obra = loadImage("12.jpg");
}

void draw() {
  background(255);
  fill(0);
  image(obra, 0, 0, 400, 400);
  noStroke();
  dibujarPatron(circulos, agrega, filas, separacionExtra);
}

void mousePressed() {
  cuadrados = true;
}

// reinicio

void keyPressed() {
  if (key == 'r' || key == 'R') {
    cuadrados = false;
  }
}
