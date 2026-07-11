void dibujarPatron(int circulos, int agrega, int filas, float separacionExtra) {
  float posY = height + 40;
  int mitad = circulos + ((filas-1) * agrega) / 2;
  
  // filas
  
  for (int cantidadCirculos = circulos; cantidadCirculos <= circulos + (filas-1) * agrega; cantidadCirculos += agrega) {
    float diametro = calculoEscala(width / 2, cantidadCirculos);
    
    // separacion d filas
    
    float rangoLupa;
    if (cantidadCirculos <= mitad) {
      rangoLupa = 25;
    } else {
      rangoLupa = 10;
    }
    
    posY -= diametro * separacionExtra;
    
    // desplazamiento de circulos 
    
    float desplazamientoFila = 0;
    if (mouseY - posY < diametro * 0.4 && mouseY - posY > -diametro * 0.4) {
      desplazamientoFila = map(mouseX, 0, width, -15, 15);
    }
    
    pushMatrix();
    translate(desplazamientoFila, 0);
    
    // coso para dibujar los circulos
    
    for (int i = 0; i < cantidadCirculos; i++) {
      float x = width / 2 + diametro * i + diametro / 2;
      float distancia = dist(mouseX, mouseY, x + desplazamientoFila, posY);
      float diametroFinal;
      
      // lupa
      if (distancia < rangoLupa) {
        diametroFinal = map(distancia, 0, rangoLupa, diametro * 1.6, diametro);
      } else {
        diametroFinal = diametro;
      }
      
      // rotate d los cuadrados
      
      if (cuadrados) {
        pushMatrix();
        translate(x, posY);
        rotate(map(mouseX, 0, width, 0, PI));
        rect(-diametroFinal/2, -diametroFinal/2, diametroFinal, diametroFinal);
        popMatrix();
      } else {
        ellipse(x, posY, diametroFinal, diametroFinal);
      }
    }
    popMatrix();
  }
}

// calcular tamaño d circulosd
float calculoEscala(float ancho, int cantidad) {
  return ancho / cantidad;
}
