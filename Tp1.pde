PFont titulo;
PImage capitanAmerica;
PImage escudo;
PImage marvel;
PImage pantalla2; 
boolean botonpresionado;
PFont personajes;
int velocidad = 1;
boolean botonpresionado2;





void setup(){
  size(600, 400);
  
  background(255);  
  
  capitanAmerica = loadImage( "CapitanAmerica.jpg"); 
  
  titulo = createFont( "American Captain.ttf", 100);
  
  textFont(titulo);
  
  escudo = loadImage("escudocapitanamerica.png");
  
  cursor(escudo, mouseX, mouseY);
  
  marvel = loadImage("marvel.jpg");
  
  botonpresionado = false;
  
  pantalla2 = loadImage("pantalla2.jpg");
  
  personajes = loadFont("Personajes.vlw");
  
  velocidad = 1;
   
  botonpresionado2 = false;
  
  
}





void draw(){ 
  
  
  println(velocidad);
 
  velocidad = frameCount / 2;
  
  
  if(!botonpresionado){
    showScreen1();
  }else{
    showScreen2();
    
  }
  if(!botonpresionado2){
    showScreen2();
  }else{
    showScreen3();
  }
}

void displayButton(){
  
  circle(290, 280, 50); 
    
  strokeWeight(3);
   
  line(285, 270, 285, 290);
    
  line(285, 290, 300, 280);
    
  line(300, 280, 285, 270);
}

void showScreen1(){
    background(0); 
    
    image(capitanAmerica, 0, 0); 
    
    image(marvel, 260, 10);
    
    textFont(titulo, 50);
    
    fill(0);
    
    text( "CAPITÁN AMÉRICA", 150, 350);
    
    fill(255);
    
    text( "CAPITÁN AMÉRICA", 155, 350);
    
    textFont(titulo, 30);
    
    fill(0); 
    
    text("EL PRIMER VENGADOR", 190, 390);
    
    textFont(titulo, 30);
    
    fill(0, 100, 200);
    
    text("EL PRIMER VENGADOR", 192, 390);
    
    fill(0, 100, 200);
    
    displayButton();
}
void displayButton2(){
  
  fill(0, 100, 200);
  
  rect(520, 20, 40, 20);
  
  strokeWeight(2);
  
  line(525, 30, 550, 30);
  
  line(550, 30, 545, 25);
  
  line(550, 30, 545, 35);


}

void showScreen2(){
  background(0);
  
  image(pantalla2, 0, 0);
  
  fill(0);
  
  textFont(personajes, 25);
  
  text("PERSONAJES PRINCIPALES \nChris Evans-Capitán América \nHayley Atwell-Peggy Carter \nSebastian Stan-Bucky \nTommy Lee Jones-General Chester Phillips \nHugo Weaving-Red Skull \nDomique Cooper-Howard Stark \nRichard Armitage-Heinz Kruger \nStanley Tucci-Dr. Abraham Erskine", 20, velocidad);
  
  fill(255);
  
  textFont(personajes, 25);
  
  text("PERSONAJES PRINCIPALES \nChris Evans-Capitán América \nHayley Atwell-Peggy Carter \nSebastian Stan-Bucky \nTommy Lee Jones-General Chester Phillips \nHugo Weaving-Red Skull \nDomique Cooper-Howard Stark \nRichard Armitage-Heinz Kruger \nStanley Tucci-Dr. Abraham Erskine", 21, velocidad);
  
  displayButton2();
}

void showScreen3(){




}



void mousePressed(){
  if( ((mouseX > 240) && (mouseX < 340)) && ((mouseY > 230) && (mouseY < 330))){
    botonpresionado = true;
  }


}
