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

  // fuentesss

  miTexto1 = loadFont ("Mangaka-48.vlw");
  miTexto2 = loadFont ("MingLiU-ExtB-48.vlw");

  // carga d imagenes

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

  // animacion pantalla rena

  renaX = 0;
  renaY = 480;
  textoX = 700;
  textoY = 600;

  //animacion pantalla mion

  mionX = 0;
  mionY = 480;
  textoX2 = -600;

  //animaciones pantalla satoko

  satokoX = 0;
  satokoY = 480;
  textoY3 = 460;

  //animaciones pantalla rika

  rikaX = 0;
  rikaY = 480;

  //animaciones keiichi

  keiichiX= 0;
  keiichiY= 480;
  textoX5 = 700;
  textoY5 = 600;
}

void draw() {

  // inicio

  image(fondoinicio, 0, 0);
  stroke(colorbordeboton);
  strokeWeight(3);
  textAlign(CENTER, CENTER);
  if (mouseX > 202 && mouseX < 369 && mouseY > 357 && mouseY < 416) {

    fill(255);
  } else {
    fill(colorbaseboton);
  }
  quad(202, 357, 202, 416, 369, 415, 369, 357);
  fill(#1A1919);
  textSize(30);
  text("INICIAR", 284, 384);

  // pantalla 1 lore(?
  if (contador == 2) {
    tiempotrans = millis() - tiempoinicio;
    if (tiempotrans > 0 && tiempotrans <= 7000) {
      image(fondo1, 0, 0);
      noStroke();
      fill(0, 50);
      quad(62, 44, 579, 44, 579, 444, 62, 444);
      if (textoAlpha < 255) {
        textoAlpha += 4;
      }
      fill(0, textoAlpha);
      textFont(miTexto1);
      textSize(30);
      text("Higurashi no Naku Koro ni es una serie de anime que se basa originalmente en una novela visual creada por el grupo japonés 07th Expansion, liderado por Ryukishi07.  La historia, publicada entre 2002 y 2006, fue adaptada al anime por el estudio Studio DEEN, con su primera temporada estrenada en 2006.", 60, 40, 500, 400);
    }
  }

  // pantalla 2 lorelorelore

  if (tiempotrans  > 7000 && tiempotrans <= 14000) {
    image(fondo2, 0, 0);
    noStroke();
    fill(0, 50);
    quad(62, 44, 579, 44, 579, 444, 62, 444);
    if (textoAlpha2 < 255) {
      textoAlpha2 += 4;
    }
    fill(0, textoAlpha2);
    textFont(miTexto1);
    textSize(30);
    text("La trama sigue a un grupo de amigos en el pueblo ficticio de Hinamizawa, donde cada año durante el festival del Watanagashi ocurren misteriosas muertes y desapariciones, desencadenando una atmósfera de paranoia, terror psicológico y misterio.  La serie combina elementos de slice of life con giros oscuros y sobrenaturales, revelando una compleja trama a través de múltiples líneas temporales.", 60, 40, 500, 400);
    fill(0);
  }

  //pantalla 3 RENA :D

  if (tiempotrans  > 14000 && tiempotrans <= 22000) {
    image(fondorena, 0, 0);
    image(rena, renaX, renaY);
    if (renaY > 0) {
      renaY -= 4;
    }
    fill(0, 220);
    rect(0, 340, 640, 140);
    if (textoX > 30) {
      textoX -= 5;
    }

    fill(255);
    textFont(miTexto2);
    textSize(20);
    text("Rena Ryuugu es conocida por su apariencia dulce y alegre, pero también por su lado oscuro y violento. Su nombre real es Reina Ryuugu, y cambia su nombre tras un trauma en su infancia cuando su familia se mudó a Hinamizawa.", textoX, 360, 580, 100);
  }

  //pantalla 4 MION MIAU

  if (tiempotrans  > 22000 && tiempotrans <= 30000) {
    if (textoX2 < 30) {
      textoX2 += 5;
    }
    image(fondomion, 0, 0);
    image(mion, mionX, mionY);
    if (mionY > 0) {
      mionY -= 4;
    }
    fill(0, 220);
    rect(0, 340, 640, 140);
    fill(255);
    textSize(20);
    text("Mion Sonozaki es la heredera de la influyente familia Sonozaki, una de las Tres Familias de Hinamizawa. Mion es la representante de clase y líder del club de juegos escolar.", textoX2, 360, 580, 100);
  }

  // pantalla 5 satokoo

  if (tiempotrans  > 30000 && tiempotrans <= 38000) {
    if (textoY3 > 360) {
      textoY3 -= 2;
    }
    image(fondosatoko, 0, 0);
    image(satoko, satokoX, satokoY);
    if (satokoY > 0) {
      satokoY -= 4;
    }
    fill(0, 220);
    rect(0, 340, 640, 140);
    fill(255);
    textSize(20);
    text("Satoko Hojo es una niña pequeña y tiene una personalidad traviesa y enérgica. Es la mejor amiga de Rika Furude y vive con ella bajo la tutela de Teppei Hojo, su tío abusivo, tras la misteriosa muerte de sus padres. ", 30, textoY3, 580, 100);
  }

  // pantalla 6 rika

  if (tiempotrans  > 38000 && tiempotrans <= 46000) {
    if (textoAlpha3 < 255) {
      textoAlpha3 += 4;
    }
    image(fondorika, 0, 0);
    image(rika, rikaX, rikaY);
    if (rikaY > 0) {
      rikaY -= 4;
    }
    fill(0, 220);
    rect(0, 340, 640, 140);
    fill(255, textoAlpha3);
    textSize(20);
    text("Rika Furude es la hija del último sacerdote de Hinamizawa y la actual miko (sacerdotisa) del Santuario Furude, encargada de realizar el ritual del Festival Watanagashi.", 30, 360, 580, 100);
  }

  // pantalla 7 keiichi

  if (tiempotrans  > 46000 && tiempotrans <= 54000) {
    image(fondokeiichi, 0, 0);
    image(keiichi, keiichiX, keiichiY);
    if (keiichiY > 0) {
      keiichiY -= 4;
    }
    fill(0, 220);
    rect(0, 340, 640, 140);
    if (textoX5 > 30) {
      textoX5 -= 5;
    }

    fill(255);
    textSize(20);
    text("Keiichi Maebara es un estudiante de 14 años que se muda a la aldea de Hinamizawa en junio de 1983.  Es un chico carismático, extrovertido y muy hábil con las palabras. esta en el club escolar con Rena, Mion, Satoko y Rika", textoX5, 360, 580, 100.);
  }

  // pantalla final porfinsiiiiii
  if (tiempotrans  > 54000) {
    image(fin, 0, 0);
    textFont(miTexto1);
    fill(0);
    text("gracias por ver :D", 60, 40, 500, 400);
    stroke(colorbordeboton);
    strokeWeight(3);
    textAlign(CENTER, CENTER);
    if (mouseX > 202 && mouseX < 369 && mouseY > 357 && mouseY < 416) {
      fill(255);
    } else {
      fill(colorbaseboton);
    }
    quad(202, 357, 202, 416, 369, 415, 369, 357);
    fill(#1A1919);
    textSize(30);
    text("REPETIR", 284, 384);
  }
}

void mouseClicked() {
  if (contador == 1 ) {
    if (mouseX > 202 && mouseX < 370 && mouseY > 355 && mouseY < 414) {
      contador = 2;
    }
  } else if (tiempotrans > 54000) {
    if (mouseX > 202 && mouseX < 370 && mouseY > 355 && mouseY < 414) {
      contador = 1;
      textoAlpha = 0;
      textoAlpha2 = 0;
      textoAlpha3 = 0;
      renaX = 0;
      renaY = 480;
      textoX = 700;
      textoY = 600;
      mionX = 0;
      mionY = 480;
      textoX2 = -600;
      satokoX = 0;
      satokoY = 480;
      textoY3 = 460;
      rikaX = 0;
      rikaY = 480;
      keiichiX= 0;
      keiichiY= 480;
      textoX5 = 700;
      textoY5 = 600;

      // COSO PQ SI NO NO SE PARA EL TIEMPO D:
      tiempoinicio = millis ();
    }
  }
}
