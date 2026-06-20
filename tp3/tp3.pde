// https://www.youtube.com/watch?v=vUdywnPGjs0

PImage obra;
int filas = 31;
int circulos = 6;
int agrega = 3;
float separacionExtra = 1.17;
int contadorClicks = 0;

void setup() {
  size(800, 400);
  obra = loadImage("12.jpg");
}

void draw() {
  
  // coso q cambia de color
  
  float brillo = map(contadorClicks, 0, 10, 0, 255);
  background(255 - brillo);
  fill(brillo);

  image(obra, 0, 0, 400, 400);
  noStroke();
  dibujarPatron();
}

void mousePressed() {
  contadorClicks++;
  if (contadorClicks > 10) {
    contadorClicks = 10;
  }
}

// reinicio

void keyPressed() {
  if (key == 'r' || key == 'R') {
    contadorClicks = 0;
  }
}
