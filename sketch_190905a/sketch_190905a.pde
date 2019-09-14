//variabler der bruges til optælling af terningkast
int  Antal1 = 0;
int  Antal2 = 0;
int  Antal3 = 0;
int  Antal4 = 0;
int  Antal5 = 0;
int  Antal6 = 0;
int terningslag = 0;
PFont font1;

//viduestørrelse, baggrundsfarve og skrifttype
void setup() {
  size(600, 460);
  background(0);
  font1 = loadFont ("ComicSansMS-48.vlw");

  //slår 1000 gange med terningen, slår mellem 1-7
  for (int i = 0; i < 1000; i++) {
    terningslag = (int)random(1, 7);


    if (terningslag == 1 ) {
      Antal1 = Antal1 +1;
    }

    if (terningslag == 2 ) {
      Antal2 = Antal2 +1;
    }

    if (terningslag == 3 ) {
      Antal3 = Antal3 +1;
    }

    if (terningslag == 4 ) {
      Antal4 = Antal4 +1;
    }

    if (terningslag == 5 ) {
      Antal5 = Antal5 +1;
    }

    if (terningslag == 6 ) {
      Antal6 = Antal6 +1;
    }
  }

  //fortæller hvor meget af hver der er blevet slået
  println("terning slået 1", Antal1); 
  println("terning slået 2", Antal2); 
  println("terning slået 3", Antal3); 
  println("terning slået 4", Antal4); 
  println("terning slået 5", Antal5); 
  println("terning slået 6", Antal6);
}

void draw() {
  //tegner 6 rektangler, der forbinder antal slået med hvad, der  er slået
   fill(230,100,100);
   rect(20, 0, 60, 500);
  rect(100, 0, 60, 500);
  rect(180, 0, 60, 500);
  rect(260, 0, 60, 500);
  rect(340, 0, 60, 500);
  rect(420, 0, 60, 500);
  
//tegner 6 rektangler i form af hvor mange der er blevet slået 
 fill(255,0,0);
  rect(20, 460-Antal1, 60, 460-Antal1);
  rect(100, 460-Antal2, 60, 460-Antal2);
  rect(180, 460-Antal3, 60, 460-Antal3);
  rect(260, 460-Antal4, 60, 460-Antal4);
  rect(340, 460-Antal5, 60, 460-Antal5);
  rect(420, 460-Antal6, 60, 460-Antal6);

//placerer teksten af hvor mange af hvert slag der er blevet slået lige over rektanglen
  fill(255);
  textSize(20);
  textFont(font1, 20);
  text(Antal1, 30, 450-Antal1);
  text(Antal2, 110, 450-Antal2);
  text(Antal3, 190, 450-Antal3);
  text(Antal4, 270, 450-Antal4);
  text(Antal5, 350, 450-Antal5);
  text(Antal6, 430, 450-Antal6);
  fill(255, 0, 0);
  
  fill(255);
  textSize(20);
  textFont(font1, 20);
  text(1, 30, 30);
  text(2, 110, 30);
  text(3, 190, 30);
  text(4, 270, 30);
  text(5, 350, 30);
  text(6, 430, 30);
  fill(255, 0, 0);
}
