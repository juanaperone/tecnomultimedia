
String estados; 
String[] textos= new String[25]; 
PImage[] estado= new PImage[14];

PImage logo; 

void setup() {
  size(800, 600);
  surface.setResizable(true); 
  estados= "click para comenzar";
  // mis dialogos: 
  textos[0]="click para comenzar";
  textos[1]="CANDACE: ¡Mama Phineas Y Ferb no estan en casa, seguro estan planeando algo! \n MAMA: Candace tranquila, deja a tus hermanos, deben estar jugando. \n CANDACE:¡te voy a demostrar que siempre se meten en problemas! los voy a ir a buscar.\n MAMA: Bueno como quieras, pero NO te lleves el auto"; 
  textos[2]="start"; 
  textos[3]="¿ auto o bici ?" ; 
  textos[4]="esperar al semaforo"; 
  textos[5]="cruzar en rojo";
  textos[6]="robar Skate";
  textos[7]="correr"; 
  textos[8]="buscar bicicleta";  
  textos[9]="Mamá se enojó con vos.   Reiniciar";
  textos[10]="El dueño del skate descubrió que se lo robaste \n y te delató con tu mamá";
  textos[11]="siguiente";
  textos[12]="corriendo chocaste con \n uno de tus hermanos";
  textos[13]="¡lo lograste!   Reiniciar"; 
  textos[14]="Perone Juana, comision 2";
  textos[15]="Cuando llegaste a casa mamá se enojó \n con vos por llevarte el auto";
  textos[16]="auto";
  textos[17]= "bici";
  textos[18]="atravesar el maraton";
  textos[19]="atravesar bajando por \n la alcantarilla"; 
  textos[20]="volver"; 
  textos[21]="usar rata para alcanzar el techo";
  textos[22]="al volver te espera la policia por \n haber dejado tu bicicleta olvidada";
  textos[23]="al salir te encontraste con Ferb \n y lo llevaste con tu mama";
  textos[24]="Al meterte en la carrera la policía te saca";


  //Mis Imagenes:
  for (int i= 0; i < estado.length; i ++) { 
    estado[i]= loadImage("estado"+i+".png"); 
    logo= loadImage("logo.png");
  }
}

void draw() {

  // Estado 0 -> dialogo 
  background(0); 
  if ( estados.equals("click para comenzar")) {
    image(logo, 0, 0, width/2, height/2);
    boton (50, 475);
    textSize(20);
    fill(0);
    text(textos[0], 80, 500);
  } else if (estados.equals("conversacion")) {
    fill(0);
    textSize(15);
    image(estado[13], 0, 0, width, height); 
    boton(50, 475);
    text(textos[1], 10, 50);
    text(textos[2], 90, 500);
  } else if (estados.equals("bici o auto")) {
    image(estado[0], 0, 0, width, height); 
    boton (50, 475);
    boton (450, 475);
    fill(0); 
    textSize(30); 
    text(textos[3], 70, 40);
    text(textos[16], 120, 510);
    text(textos[17], 580, 510);
  } else if (estados.equals("auto")) {
    image( estado[1], 0, 0, width, height); 
    boton (50, 475);
    boton (450, 475);
    fill(0); 
    textSize(30);
    text(textos[4], 60, 510);
    text(textos[5], 490, 510);
  } else if (estados.equals("cruce semaforo")) {
    image(estado[5], 0, 0, width, height);
    boton (50, 475);
    boton (450, 475);
    textSize(30);
    text(textos[6], 60, 510);
    text(textos[7], 490, 510);
  } else if (estado.equals("espera")) {
    image(estado[3], 0, 0, width, height);
    boton (50, 475);
    boton (450, 475);
    textSize(30);
    text(textos[7], 60, 510);
    text(textos[8], 490, 510);
  } else if (estados.equals("robar skate")) {
    image(estado[6], 0, 0, width, height); 
    boton (50, 475);
    bTexto(60, 100);
    fill(0);
    text(textos[10], 65, 140);
    textSize(20);
    text(textos[11], 90, 510);
  } else if ( estados.equals("correr")) {
    image(estado[4], 0, 0, width, height); 
    bTexto(120, 20);
    boton(50, 475);
    fill(0);
    textSize(30);
    text(textos[12], 130, 48);
    text(textos[11], 60, 500);
  } else if (estados.equals("creditos")) {
    image(estado[11], 0, 0, width, height);
    fill(0);
    textSize(20); 
    text(textos[14], 320, 50); 
    boton(50, 475);
    text(textos[13], 55, 500);
  } else if (estados.equals("reinicio")) {
    image(estado[8], 0, 0, width, height);
    fill(0);
    textSize(15);
    boton(50, 475);
    text(textos[9], 55, 500);
  } else if (estados.equals("buscar bicicleta")) {
    image( estado[12], 0, 0, width, height);
    bTexto(120, 20);
    boton(50, 475);
    textSize(20);
    text(textos[15], 130, 50);
    text(textos[11], 120, 500);

    //----------------------------------------------------------------------
    // Se eligio bicicleta
  } else if (estados.equals("bicicleta")) {
    image(estado[2], 0, 0, width, height);
    boton (50, 475);
    boton(450, 475);
    textSize(20);
    text(textos[18], 60, 490);
    text(textos[19], 450, 490);
  } else if (estados.equals("alcantarillas")) {
    image(estado[9], 0, 0, width, height);
    boton(50, 475);
    boton(450, 475);
    textSize(15);
    fill(0);
    text(textos[20], 70, 500);
    text(textos[21], 470, 500);
  } else if (estados.equals("maraton")) {
    image(estado[7], 0, 0, width, height);
    bTexto(20, 20);
    boton(50, 475);
    textSize(20);
    fill(0);
    text(textos[24], 50, 80);
    text(textos[11], 150, 500);
  } else if (estados.equals("rata")) {
    image(estado[10], 0, 0, width, height);
    bTexto (280, 80);
    boton (50, 475);
    textSize(20);
    fill(0);
    text(textos[23], 370, 120);
    text(textos[11], 130, 500);
  } else if ( estados.equals( "volver" )) {
    image(estado[7], 0, 0, width, height);
    bTexto (280, 20);
    boton (50, 475);
    textSize(20);
    fill(0);
    text(textos[22], 330, 70);
    text(textos[11], 100, 510);
  }
}

void mousePressed() {
  if (estados.equals("click para comenzar")) {
    cambio("conversacion", 50);
  }

  if (estados.equals("conversacion")) {
    cambio("bici o auto", 50);
  }

  if (estados.equals("bici o auto")) {
    cambio("auto", 50 );
  }

  if (estados.equals("bici o auto")) {
    cambio("bicicleta", 450);
  }

  if (estados.equals( "auto")) {
    cambio("cruce semaforo", 450);
  }
  if (estados.equals("auto")) {
    cambio("espera", 50);
    
  }if (estados.equals("espera")){
    cambio("buscar bicicleta",50);
    
  }if (estados.equals("espera")){
    cambio ("correr", 450); 
  }if (estados.equals("cruce semaforo")){
    cambio("robar skate", 50); 
    
  }if (estados.equals("buscar bicicleta")){
    cambio("reinicio",50); 
 
}if (estados.equals("correr")){
  cambio("creditos",50);
  
} if(estados.equals("reinicio")){
  cambio("click para comenzar", 50);
  
}if (estados.equals("creditos")){
  cambio("click para comenzar",50);
  
} if (estados.equals("bicicleta")){
  cambio("maraton",50);
  
} if (estados.equals("bicicleta")){
  cambio("alcantarillas", 450);
  
}if (estados.equals("alcantarillas")){
  cambio("volver",50);
  
} if (estados.equals("alcantarillas")){
  cambio("rata", 450);
  
}if (estados.equals("rata")){
  cambio("creditos",50); 
  
}if (estados.equals("volver")){
  cambio("reinicio",50);
  
}if (estados.equals("maraton")){
  cambio("reinicio",50);
  
}if (estados.equals("cruce semaforo")){
  cambio("robar skate", 50);
  
} if (estados.equals("robar skate")){
  cambio("reinicio", 50);
  
}if (estados.equals("cruce semaforo")){
  cambio("correr",450);
  }
}
