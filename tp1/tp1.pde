PImage Imagen;

void setup(){
  size (800,400);
  Imagen = loadImage ("altapintura.jpg"); 
}

void draw (){
  background(200);
  
  fill(#1a1416);
  background(#1a1416);
  stroke(#3B2D1F);
  image(Imagen, 0, 0);
  square(400, 0, 2000);
  stroke(#3B2D1F);
  strokeWeight(3);
  fill(#5F5B5F);
  quad(500, 17, 785, 0, 785, 400, 500, 400);
    fill(#42382e);
  rect(787, 0, 800, 400);
  // brazo izquierdo señora
  fill(#A03737);
  stroke(#792918);
  quad(549, 189, 559, 295, 517, 351, 495, 286); 
  // torso de la señora
  fill(#A03737);
  stroke(#792918);
  quad(556, 399, 549, 178, 750, 200, 703, 399);
  fill(#A03737);
  noStroke();
  triangle(550, 190, 751, 203, 629, 138);
  // tercer brazo ?????????????????
  stroke(#792918);
  triangle(690, 335, 651, 318, 671, 363);
  //mano señora
  stroke(#DEAC8D);
  fill(#FFEECB);
  beginShape();
  vertex(649, 325);
  vertex(635, 331);
  vertex(614, 363);
  vertex(616, 389);
  vertex(622, 384);
  vertex(622, 369);
  vertex(627, 363);
  vertex(624, 376);
  vertex(630, 396);
  vertex(638, 392);
  vertex(633, 369);
  vertex(638, 378);
  vertex(654, 379);
  vertex(655, 368);
  vertex(664, 353);
  vertex(654, 324);
  endShape(CLOSE);
  //brazo derecho de la señora
  fill(#A03737);
  stroke(#792918);
  ellipse(726, 220, 80, 50);
  quad(700, 242, 757, 240, 757, 277, 700, 273);
  quad(702, 272, 706, 350, 750, 358, 757, 272);
  quad(648, 274, 751, 328, 750, 367, 641, 320);
  // coso rojode la ropa de la parte izquierda de la ??? señora
  fill(#A03737);
  stroke(#792918);
  triangle(616, 175, 624, 121, 572, 160);
  // cosito del cuello blanco señora
  fill(#FCF6F5);
  stroke(#EAE4E3);
  beginShape();
  vertex(617, 167);
  vertex(623, 156);
  vertex(620, 137);
  vertex(605, 108);
  vertex(595, 137);
  vertex(600, 155);
  vertex(613, 150);
  vertex(615, 167);
  endShape();
  // cuello señora
  fill(#FFEECB);
 beginShape();
  stroke(#DEAC8D);
  vertex(621, 131);
  vertex(623, 158);
  vertex(613, 171);
  vertex(624, 195);
  vertex(628, 194);
  vertex(643, 168);
  vertex(645, 149);
  vertex(665, 131);
  vertex(662, 113);
  endShape(CLOSE);
  // cosito rojo del cuello d la parte derecha señora
  fill(#A03737);
  stroke(#792918);
   beginShape();
   vertex(629, 193);
   vertex(639, 171);
   vertex(665, 131);
   vertex(679, 132);
   vertex(691, 134);
   vertex(683, 177);
   vertex(651, 177);
   vertex(629, 193);
   endShape(CLOSE);
   
   // cabeza de la señora
   fill(#FFEECB);
  stroke(#DEAC8D);
  ellipse(629, 97 , 80 , 100);
   //pelo señora 
   stroke(#3E2D1B);
   fill(#6C6451);
   beginShape();
   vertex(602, 81);
   vertex(611, 63);
   vertex(661, 88);
   vertex(679, 88);
   vertex(675, 58);
   vertex(642, 42);
   vertex(615, 43);
   vertex(602, 60);
   vertex(588, 82);
   endShape(CLOSE);
   //orejajajaja
   fill(#FFEECB);
  noStroke();
   ellipse(670, 101, 15, 20);
   // cara de la señorarara
   stroke(#3E2D1B);
   circle(624, 127, 30);
   noStroke();
   circle(624, 120, 39);
   stroke(#3E2D1B);
   fill(#3E2D1B);
   ellipse(604, 104, 10, 4);
   ellipse(642, 104, 10, 4);
  //cuellito parte derecha señora :D
  fill(#FCF6F5);
  stroke(#EAE4E3);
    beginShape();
  vertex(641, 170);
  vertex(645, 145);
  vertex(666, 125);
  vertex(671, 115);
  vertex(681, 127);
  vertex(672, 151);
  vertex(641, 170);
  endShape(CLOSE);
  
  
  // CABEZA DEL SEÑOR !!!!!!!!
  fill(#FFEECB);
  stroke(#DEAC8D);
  ellipse(490, 155, 70, 90);
  //Cuellito
  stroke(#CCC4CE);
  fill(#EEE8F0);
  triangle(448, 158, 495, 207, 441, 178);
  //oreja ?
  fill(#FFEECB);
  noStroke();
   ellipse(458, 162, 20, 20);
   //torso del señor
   fill(#1C1A1C);
   stroke(#0D0B0D);
   quad(441, 178, 504, 212, 580, 400, 436, 400);
      //palito raro
   stroke(#9D765F);
   line(599, 322, 768, 203);
   fill(#938881);
   stroke(#403833);
   circle(777, 190, 10);
   triangle(763, 196, 773, 212, 773, 195);
   //brazo !!
   fill(#1C1A1C);
   stroke(#0D0B0D);
   quad(488, 209, 449, 248, 564, 365, 552, 284);
   quad(552, 285, 558, 357,  671, 278, 641, 257);
   // mano
   fill(#FFEECB);
  stroke(#DEAC8D);
   beginShape();
   vertex(25 + 624, 257);
   vertex(25 + 624, 237);
   vertex(25 + 635, 225);
   vertex(25 + 641, 222);
   vertex(25 + 656, 225);
   vertex(25 +  659, 230);
   vertex(25 + 666, 234);
   vertex(25 + 666, 240);
   vertex(25 + 649, 235);
   vertex(25 + 645, 243);
   vertex(25 + 651, 241);
   vertex(25 + 661, 241);
   vertex(25 + 660, 259);
   vertex(25 + 650, 267);
   vertex(25 + 645, 275);
   vertex(25 + 620, 257);
   endShape(CLOSE);
   //cosito de la mano
   stroke(#CCC4CE);
  fill(#EEE8F0);
   triangle(632, 256, 671, 275, 645, 254);
   //pelolol
   stroke(#1F1814);
   fill(#483A32);
   beginShape();
   vertex(454, 146);
   vertex(459, 150);
   vertex(470, 128);
   vertex(480, 121);
   vertex(489, 130);
   vertex(502, 122);
   vertex(518, 144);
   vertex(524, 136);
   vertex(513, 114);
   vertex(489, 105);
   vertex(460, 113);
   vertex(452, 152);
   endShape(CLOSE);
   //carararara
   stroke(#3E2D1B);
   circle(479, 159, 05);
   circle(506, 159, 05);
   // barba
   beginShape();
   vertex(462, 149);
   vertex(476, 181);
   vertex(510, 184);
   vertex(523, 174);
   vertex(519, 181);
   vertex(508, 198);
   vertex(489, 200);
   vertex(460, 170);
   vertex(454, 147);
   vertex(462, 145);
   endShape(CLOSE);
   stroke(#120E0B);
   line(27+ 482, 180, 490, 182);
}
