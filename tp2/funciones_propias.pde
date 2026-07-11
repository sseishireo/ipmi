void reiniciarAnimaciones() {
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

  keiichiX = 0;
  keiichiY = 480;
  textoX5 = 700;
  textoY5 = 600;
}

// Devuelve true si el mouse esta dentro del rectangulo del boton
boolean mouseSobreBoton(int x1, int y1, int x2, int y2) {
  return (mouseX > x1 && mouseX < x2 && mouseY > y1 && mouseY < y2);
}

// coso para dibuajr boton
void dibujarBoton(String texto) {
  stroke(colorbordeboton);
  strokeWeight(3);
  textAlign(CENTER, CENTER);

  if (mouseSobreBoton(202, 357, 369, 416)) {
    fill(255);
  } else {
    fill(colorbaseboton);
  }
  quad(202, 357, 202, 416, 369, 415, 369, 357);

  fill(#1A1919);
  textSize(30);
  text(texto, 284, 384);
}

// fondo para el texto
void dibujarCajaLore() {
  noStroke();
  fill(0, 50);
  quad(62, 44, 579, 44, 579, 444, 62, 444);
}

// fondo para el texto d personajes
void dibujarCajaPersonaje() {
  fill(0, 220);
  rect(0, 340, 640, 140);
}

// para no pasarme de 255
int aumentarAlpha(int alphaActual, int incremento) {
  return min(alphaActual + incremento, 255);
}


void mostrarPantallaInicio() {
  image(fondoinicio, 0, 0);
  dibujarBoton("INICIAR");
}

void mostrarLore1() {
  image(fondo1, 0, 0);
  dibujarCajaLore();

  textoAlpha = aumentarAlpha(textoAlpha, 4);

  fill(0, textoAlpha);
  textFont(miTexto1);
  textSize(30);
  text("Higurashi no Naku Koro ni es una serie de anime que se basa originalmente en una novela visual creada por el grupo japonés 07th Expansion, liderado por Ryukishi07.  La historia, publicada entre 2002 y 2006, fue adaptada al anime por el estudio Studio DEEN, con su primera temporada estrenada en 2006.", 60, 40, 500, 400);
}

void mostrarLore2() {
  image(fondo2, 0, 0);
  dibujarCajaLore();

  textoAlpha2 = aumentarAlpha(textoAlpha2, 4);

  fill(0, textoAlpha2);
  textFont(miTexto1);
  textSize(30);
  text("La trama sigue a un grupo de amigos en el pueblo ficticio de Hinamizawa, donde cada año durante el festival del Watanagashi ocurren misteriosas muertes y desapariciones, desencadenando una atmósfera de paranoia, terror psicológico y misterio.  La serie combina elementos de slice of life con giros oscuros y sobrenaturales, revelando una compleja trama a través de múltiples líneas temporales.", 60, 40, 500, 400);
  fill(0);
}

void mostrarRena() {
  image(fondorena, 0, 0);
  image(rena, renaX, renaY);

  if (renaY > 0) {
    renaY -= 4;
  }

  dibujarCajaPersonaje();

  if (textoX > 30) {
    textoX -= 5;
  }

  fill(255);
  textFont(miTexto2);
  textSize(20);
  text("Rena Ryuugu es conocida por su apariencia dulce y alegre, pero también por su lado oscuro y violento. Su nombre real es Reina Ryuugu, y cambia su nombre tras un trauma en su infancia cuando su familia se mudó a Hinamizawa.", textoX, 360, 580, 100);
}

void mostrarMion() {
  if (textoX2 < 30) {
    textoX2 += 5;
  }

  image(fondomion, 0, 0);
  image(mion, mionX, mionY);

  if (mionY > 0) {
    mionY -= 4;
  }

  dibujarCajaPersonaje();

  fill(255);
  textSize(20);
  text("Mion Sonozaki es la heredera de la influyente familia Sonozaki, una de las Tres Familias de Hinamizawa. Mion es la representante de clase y líder del club de juegos escolar.", textoX2, 360, 580, 100);
}

void mostrarSatoko() {
  if (textoY3 > 360) {
    textoY3 -= 2;
  }

  image(fondosatoko, 0, 0);
  image(satoko, satokoX, satokoY);

  if (satokoY > 0) {
    satokoY -= 4;
  }

  dibujarCajaPersonaje();

  fill(255);
  textSize(20);
  text("Satoko Hojo es una niña pequeña y tiene una personalidad traviesa y enérgica. Es la mejor amiga de Rika Furude y vive con ella bajo la tutela de Teppei Hojo, su tío abusivo, tras la misteriosa muerte de sus padres. ", 30, textoY3, 580, 100);
}

void mostrarRika() {
  textoAlpha3 = aumentarAlpha(textoAlpha3, 4);

  image(fondorika, 0, 0);
  image(rika, rikaX, rikaY);

  if (rikaY > 0) {
    rikaY -= 4;
  }

  dibujarCajaPersonaje();

  fill(255, textoAlpha3);
  textSize(20);
  text("Rika Furude es la hija del último sacerdote de Hinamizawa y la actual miko (sacerdotisa) del Santuario Furude, encargada de realizar el ritual del Festival Watanagashi.", 30, 360, 580, 100);
}

void mostrarKeiichi() {
  image(fondokeiichi, 0, 0);
  image(keiichi, keiichiX, keiichiY);

  if (keiichiY > 0) {
    keiichiY -= 4;
  }

  dibujarCajaPersonaje();

  if (textoX5 > 30) {
    textoX5 -= 5;
  }

  fill(255);
  textSize(20);
  text("Keiichi Maebara es un estudiante de 14 años que se muda a la aldea de Hinamizawa en junio de 1983.  Es un chico carismático, extrovertido y muy hábil con las palabras. esta en el club escolar con Rena, Mion, Satoko y Rika", textoX5, 360, 580, 100);
}

void mostrarFinal() {
  image(fin, 0, 0);
  textFont(miTexto1);
  fill(0);
  text("gracias por ver :D", 60, 40, 500, 400);
  dibujarBoton("REPETIR");
}
