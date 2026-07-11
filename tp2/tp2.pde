//imageneswaw

PImage fondoinicio;
PImage fondo1;
PImage fondo2;
PImage fondokeiichi;
PImage keiichi;
PImage fondomion;
PImage mion;
PImage fondorena;
PImage rena;
PImage fondorika;
PImage rika;
PImage rikaconlentes;
PImage fondosatoko;
PImage satoko;
PImage fin;

// variables para animar a los bichos o.O

int renaX;
int renaY;
int mionX;
int mionY;
int satokoX;
int satokoY;
int rikaX;
int rikaY;
int keiichiX;
int keiichiY;

//Fuentes

PFont miTexto1;
PFont miTexto2;

// variables para animar el texto

int textoAlpha;
int textoAlpha2;
int textoAlpha3;
int textoX;
int textoY;
int textoX2;
int textoY2;
int textoX3;
int textoY3;
int textoX4;
int textoY4;
int textoX5;
int textoY5;

// otros cosos
color colorbordeboton;
color colorbaseboton;

int contador;
int tiempoinicio;
int tiempotrans;


void setup() {

  size (640, 480);

  miTexto1 = loadFont ("Mangaka-48.vlw");
  miTexto2 = loadFont ("MingLiU-ExtB-48.vlw");
  fondoinicio = loadImage("fondoinicio.jpg");
  fondo1 = loadImage("fondoexplicacion1.jpg");
  fondo2 = loadImage("fondoexplicacion2.png");
  fondokeiichi = loadImage("fondokeiichi.png");
  keiichi = loadImage("keiichi.png");
  fondorena = loadImage("fondorena.png");
  rena = loadImage("renaryugu.png");
  fondomion = loadImage("fondomion.png");
  mion = loadImage("mion.png");
  fondorika = loadImage("fondorika.png");
  rika = loadImage("rika.png");
  rikaconlentes = loadImage("rikaconlentes.png");
  fondosatoko = loadImage("fondosatoko.png");
  satoko = loadImage("satoko.png");
  fin = loadImage ("fingraciasdios.jpg");

  //peladoboton

  colorbaseboton = color(#7C0B0B);
  colorbordeboton = color(#3B0404);

  //fade in y kontador jojojo

  textoAlpha = 0;
  textoAlpha2 = 0;
  textoAlpha3 = 0;
  contador = 1;

  reiniciarAnimaciones();
}

void draw() {

  // inicio
  mostrarPantallaInicio();

  // pantalla 1 lore(?
  if (contador == 2) {
    tiempotrans = millis() - tiempoinicio;

    if (tiempotrans > 0 && tiempotrans <= 7000) {
      mostrarLore1();
    } else if (tiempotrans > 7000 && tiempotrans <= 14000) {
      mostrarLore2();
    } else if (tiempotrans > 14000 && tiempotrans <= 22000) {
      mostrarRena();
    } else if (tiempotrans > 22000 && tiempotrans <= 30000) {
      mostrarMion();
    } else if (tiempotrans > 30000 && tiempotrans <= 38000) {
      mostrarSatoko();
    } else if (tiempotrans > 38000 && tiempotrans <= 46000) {
      mostrarRika();
    } else if (tiempotrans > 46000 && tiempotrans <= 54000) {
      mostrarKeiichi();
    } else if (tiempotrans > 54000) {
      mostrarFinal();
    }
  }
}

void mouseClicked() {
  if (contador == 1 ) {
    if (mouseSobreBoton(202, 355, 370, 414)) {
      contador = 2;
      tiempoinicio = millis();
    }
  } else if (tiempotrans > 54000) {
    if (mouseSobreBoton(202, 355, 370, 414)) {
      contador = 1;
      textoAlpha = 0;
      textoAlpha2 = 0;
      textoAlpha3 = 0;
      reiniciarAnimaciones();

      // COSO PQ SI NO NO SE PARA EL TIEMPO D:
      tiempoinicio = millis ();
    }
  }
}
