// texto
String comienzo;
String Ca; 
String Ma;
String Cb; 
String Mb; 
String comenzar; 
String autoBici;
String semaforo2; 
String cruce; 
String robar;
String correr; 
String buscar;
String reinicio;
String robarskate;
String siguiente;
String cancorriendo; 
String fin;
String minombre;
String buscando; 
String opAuto;
String opBici; 
String volver; 
String usarrata;
String alsalir; 
// diagrama de estados 
String estado; 
// imagenes 
PImage logo; 
PImage cocina; 
PImage candace1;
PImage mama; 
PImage auto; 
PImage bici; 
PImage Candace; 
PImage calle; 
PImage semaforo;
PImage pyf1; 
PImage autopolicia; 
PImage nenes; 
PImage patineta; 
PImage corriendo; 
PImage phineas; 
PImage cancreditos; 
PImage canreinicio; 
PImage pyfcreditos; 
PImage corriendo2; 
PImage candacebici; 
PImage maraton; 
PImage alcantarilla; 
PImage cloaca; 
PImage agujero;
PImage rata; 
PImage ferb; 
String cruzar;
String bajar; 
String alvolver;
String cruzarmaraton; 
void setup() { 
  size(800, 600);
  estado= "click para comenzar";

  logo= loadImage( "logo.png"); 
  comienzo= "click para comenzar"; 
  cocina= loadImage("cocina.png");
  candace1= loadImage("Candace.png");
  mama= loadImage("mama.png"); 
  auto= loadImage( "auto.png"); 
  bici= loadImage( "bicicleta.png"); 
  Candace= loadImage("Candace.png"); 
  calle= loadImage( "calle.jpg"); 
  semaforo= loadImage ( "semaforo.png"); 
  pyf1= loadImage( "pyf1.png"); 
  autopolicia= loadImage( "autopolicia.png"); 
  nenes= loadImage("nenes.png") ; 
  patineta= loadImage("skate.png"); 
  corriendo= loadImage("corriendo.jpg"); 
  phineas= loadImage("phineas.png"); 
  pyfcreditos= loadImage("pyfcreditos.png"); 
  cancreditos= loadImage("cancreditos.png"); 
  canreinicio= loadImage("canreinicio.png"); 
  corriendo2= loadImage("corriendo2.jpg"); 
  candacebici= loadImage("candacebici.png"); 
  maraton= loadImage("maraton.gif"); 
  alcantarilla= loadImage("alcantarilla.png"); 
  cloaca= loadImage("cloaca.png");
  agujero= loadImage("agujero.png"); 
  rata= loadImage("rata.png"); 
  ferb= loadImage("ferb.png");
  Ca= "CANDACE: ¡Mama Phineas Y Ferb no estan en casa, seguro estan planeando algo!"; 
  Ma= "MAMA: Candace tranquila, deja a tus hermanos, deben estar jugando"; 
  Cb= "CANDACE:¡te voy a demostrar que siempre se meten en problemas! los voy a ir a buscar"; 
  Mb ="MAMA: Bueno como quieras, pero NO te lleves el auto ";
  comenzar= "start" ;
  autoBici= "¿ auto o bici ?" ; 
  semaforo2= "esperar al semaforo"; 
  cruce= "cruzar en rojo";
  robar= "robar Skate"; 
  correr= "correr"; 
  buscar= "buscar bicicleta";  
  reinicio="Mamá se enojó con vos.   Reiniciar";
  robarskate= "el dueño del skate descubrió que se lo robaste y te delató con tu mamá";
  siguiente= "siguiente";
  cancorriendo= "corriendo chocaste con uno de tus hermanos";
  fin= "¡lo lograste!   Reiniciar"; 
  minombre= "Perone Juana, comision 2";
  buscando= "Cuando llegaste a casa mamá se enojó con vos por llevarte el auto";
  opAuto= "auto";
  opBici= "bici";
  cruzar= "atravesar el maraton";
  bajar="atravesar bajando por la alcantarilla"; 
  volver="volver"; 
  usarrata="usar rata para alcanzar el techo";
  alvolver= "al volver te espera la policia por haber dejado tu bicicleta olvidada";
  alsalir="al salir te encontraste con Ferb y lo llevaste con tu mama"; 
  cruzarmaraton= "Al meterte en la carrera la policía te saca";
}

void draw() {
  background(0);
  image(logo, 100, 0, 300, 300); 
  text( comienzo, 100, 500); 
  textSize(30); 
  stroke(#242020); 


  //ciclo if para manejar estados
  if ( estado.equals( "click para comenzar")) {

    image(logo, 100, 0, 300, 300); 
    fill(0, 255, 0, 100);
    rect(100, 475, 300, 30);
    fill(0); 
    text( comienzo, 100, 500); 
    textSize(30);

    // ---------------------------------------------------------------------------------------------------------------------------
  } else if ( estado.equals( "conversacion")) {
    background(255); 
    image( cocina, 320, 0, 500, 700);
    image( mama, 500, 280, 400, 400); 
    image( candace1, 200, 280, 400, 400);
    textSize(15);
    fill(0); 
    text( Ca, 0, 40); 
    textSize(15);
    fill(#CE04BA); 
    text( Ma, 0, 80); 
    textSize(15);
    fill(0); 
    text( Cb, 0, 120);
    textSize(15);
    fill(#CE04BA); 
    text( Mb, 0, 160); 
    fill(0); 
    fill (0);
    text(comenzar, 50, 500, 80, 80);
  } else if ( estado.equals( "bici o auto" )) {
    background(200); 
    fill(0); 
    textSize(30);
    text(autoBici, 70, 40);

    image( auto, 30, 300, 300, 400);
    image( Candace, 200, 200, 400, 400); 
    image( bici, 480, 300, 300, 400);
    fill(0, 255, 0, 100);
    rect(180, 200, 100, 40);
    fill(0, 255, 0, 100);
    rect(580, 200, 100, 40);
    fill(0);
    textSize(18);
    text(opAuto, 200, 220);
    text(opBici, 600, 220); 



    // se eligio auto:
  } else if ( estado.equals( "auto")) {

    image( calle, 10, 10, 800, 600); 
    image( pyf1, 400, 230, 50, 50); 
    image( auto, 400, 320, 100, 100);
    fill(0, 255, 0, 100);
    rect(100, 500, 300, 40);
    fill(0, 255, 0, 100);
    rect(400, 500, 300, 40);
    fill(0); 
    textSize(20); 
    text(semaforo2, 100, 530); 
    text(cruce, 400, 530);
  } else if (estado.equals("cruce semaforo")) {
    background(0); 
    image( calle, 10, 10, 800, 600); 
    image( pyf1, 400, 230, 50, 50); 
    image( auto, 400, 280, 100, 100);
    image( autopolicia, 400, 300, 180, 180); 
    image( patineta, 600, 500, 90, 90);
    fill(0, 255, 0, 100);
    rect(100, 100, 250, 40);
    fill(0, 255, 0, 100);
    rect(400, 100, 250, 40);
    fill(0);
    textSize(30);
    text(robar, 100, 130); 
    text(correr, 400, 130);
  } else if (estado.equals( "espera")) {
    image( calle, 10, 10, 800, 600); 
    image( auto, 400, 420, 200, 200);
    image (nenes, 400, 300, 130, 130); 
    fill(0, 255, 0, 100);
    rect(100, 100, 300, 40);
    fill(0, 255, 0, 100);
    rect(400, 100, 300, 40);
    fill(0);
    textSize(30);
    text(buscar, 100, 130); 
    text(correr, 400, 130);




    // se eligio semaforo
  } else if ( estado.equals( "robar skate")) {
    image( calle, 10, 10, 800, 600); 
    image(Candace, 400, 300, 200, 200); 
    image( patineta, 600, 500, 90, 90);
    fill(0, 255, 0, 100);
    rect(100, 500, 420, 40);
    fill(0);
    textSize(12);
    text(robarskate, 100, 530);
    fill(0, 255, 0, 100);
    rect( 200, 550, 100, 40);
    fill(0);
    textSize(15);
    text(siguiente, 210, 580);
  } else if ( estado.equals( "correr")) {
    image(corriendo, 0, 0, 800, 600); 
    image(phineas, 10, 250, 380, 380); 
    fill(0, 255, 0, 100);
    rect(100, 500, 420, 40);
    fill(0);
    textSize(15);
    text(cancorriendo, 120, 530);
    fill(0, 255, 0, 100);
    rect( 200, 550, 100, 40);
    fill(0);
    textSize(15);
    text(siguiente, 210, 580);


    //se eligio correr
  } else if ( estado.equals( "creditos")) {
    background( 0); 
    image(cancreditos, 20, 300, 300, 300); 
    image( pyfcreditos, 230, 330, 280, 280);
    image( mama, 400, 300, 300, 300); 
    fill(0, 255, 0, 100);
    rect(400, 200, 300, 40);
    fill(0);
    textSize(16);
    text(fin, 410, 230); 
    fill(0, 255, 0, 100);
    rect(300, 30, 300, 40);
    fill(0);
    textSize(16);
    text(minombre, 320, 50);

    //se eligio robar skate
  } else if ( estado.equals("reinicio")) { 
    background( 0); 
    image(canreinicio, 20, 270, 350, 350); 
    image(mama, 400, 270, 400, 400); 
    fill(0, 255, 0, 100);
    rect(400, 50, 300, 40);
    fill(0);
    textSize(16);
    text(reinicio, 410, 68); 

    // se eligio espera
  } else if ( estado.equals ( "correr")) {
    image(corriendo, 0, 0, 800, 600); 
    image(phineas, 10, 250, 380, 380);
    fill(0, 255, 0, 100);
    rect(100, 500, 420, 40);
    fill(0);
    textSize(15);
    text(cancorriendo, 120, 530);
    fill(0, 255, 0, 100);
    rect( 200, 550, 100, 40);
    fill(0);
    textSize(15);
    text(siguiente, 210, 580);
  } else if ( estado.equals("buscar bicicleta")) {
    image(corriendo2, 0, 0, 800, 600); 
    fill(0, 255, 0, 100);
    rect(100, 500, 483, 40);
    fill(0);
    textSize(15);
    text(buscando, 100, 530);
    fill(0, 255, 0, 100);
    rect( 200, 550, 100, 40);
    fill(0);
    textSize(15);
    text(siguiente, 210, 580);
    // se eligio correr
  } else if ( estado.equals( "creditos")) {
    background( 0); 
    image(cancreditos, 20, 300, 300, 300); 
    image( pyfcreditos, 230, 330, 280, 280);
    image( mama, 400, 300, 300, 300); 
    fill(0, 255, 0, 100);
    rect(400, 200, 300, 40);
    fill(0);
    textSize(16);
    text(fin, 410, 230); 
    fill(0, 255, 0, 100);
    rect(300, 30, 300, 40);
    fill(0);
    textSize(16);
    text(minombre, 320, 50);




    // se eligio buscar bicicleta
  } else if ( estado.equals("reinicio")) { 
    background( 0); 
    image(canreinicio, 20, 270, 350, 350); 
    image(mama, 400, 270, 400, 400); 
    fill(0, 255, 0, 100);
    rect(400, 500, 300, 40);
    fill(0);
    textSize(16);
    text(reinicio, 410, 530); 


    //   ---------------------------------------------------------------------------------------------------------------------------      
    // se eligio bicicleta:
  } else if (estado.equals("bicicleta")) {
    image(candacebici, 0, 0, 800, 600); 
    image(alcantarilla, 80, 400, 200, 200); 
    image(maraton, 500, 200, 400, 400);
    fill(0, 255, 0, 100);
    rect(20, 20, 160, 20);
    fill(0);
    textSize(16);
    text(cruzar, 20, 34); 
    fill(0, 255, 0, 100);
    rect(200, 20, 300, 20);
    fill(0);
    textSize(16);
    text(bajar, 200, 34);
  } else if ( estado.equals( "alcantarillas")) {
    background(#055216); 
    image(Candace, 30, 200, 400, 400); 
    image(cloaca, -80, 300, 1000, 500) ; 
    image( agujero, 500, 0, 200, 200); 
    image( rata, 500, 330, 100, 100);
    fill(0, 255, 0, 100);
    rect(130, 100, 100, 30);
    fill(0);
    textSize(20);
    text(volver, 140, 120); 
    fill(0, 255, 0, 100);
    rect(400, 100, 350, 30);
    fill(0);
    textSize(20);
    text(usarrata, 410, 120);
  } else if ( estado.equals( "maraton")) {

    image(candacebici, 0, 0, 800, 600); 
    image(maraton, 0, 200, 300, 300); 
    image(autopolicia, 400, 280, 500, 500);
    fill(0, 255, 0, 100);
    rect(130, 100, 420, 30);
    fill(0);
    textSize(20);
    text(cruzarmaraton, 140, 120); 
    fill(0, 255, 0, 100);
    rect(400, 160, 100, 30);
    fill(0);
    text(siguiente, 405, 180);
  } else if (estado.equals("reinicio")) { 
    background( 0); 
    image(canreinicio, 20, 270, 350, 350); 
    image(mama, 400, 270, 400, 400); 


    // se eligio alcantarillas
  } else if ( estado.equals("rata")) {
    image(calle, 0, 0, 800, 600); 
    image(Candace, 280, 400, 400, 400); 
    image(ferb, 10, 0, 400, 400); 
    fill(0, 255, 0, 100);
    rect(130, 100, 660, 30);
    fill(0);
    textSize(20);
    text(alsalir, 140, 120); 
    fill(0, 255, 0, 100);
    rect(370, 160, 100, 30);
    fill(0);
    text(siguiente, 375, 180);
  } else if ( estado.equals( "volver" )) {

    image(calle, 0, 0, 800, 600); 
    image(Candace, 280, 400, 400, 400); 
    image(autopolicia, 50, 200, 400, 400); 
    fill(0, 255, 0, 100);
    rect(130, 100, 660, 30);
    fill(0);
    textSize(20);
    text(alvolver, 140, 120); 
    fill(0, 255, 0, 100);
    rect(170, 160, 100, 30);
    fill(0);
    text(siguiente, 175, 180); 


    // se eligio rata
  } else if ( estado.equals( "creditos")) {
    background( 0); 
    image(cancreditos, 20, 300, 300, 300); 
    image( pyfcreditos, 230, 330, 280, 280);
    image( mama, 400, 300, 300, 300); 



    // se eligio volver
  } else if ( estado.equals("reinicio")) {
    background( 0); 
    image(canreinicio, 20, 270, 350, 350); 
    image(mama, 400, 270, 400, 400);
  }
}




void mousePressed() {

  if (estado.equals("click para comenzar")) {


    if ((mouseX > 100) &&( mouseX<100+300) &&( mouseY > 475 )&& (mouseY < 500+30)) {  //rect(100, 475, 300, 30);

      estado= "conversacion";
    }
  }

  if (estado.equals("conversacion")) {

    if ((mouseX > 50 )&&( mouseX < 50+80) && ( mouseY > 500) && (mouseY< 500+80)) {

      estado= "bici o auto";
    }
  }
  if (estado.equals("bici o auto")) {

    if (( mouseX >180)&&(mouseX<180+100)&&(mouseY>200)&&(mouseY<200+40)) {  //rect(180, 200, 100, 40);
      estado="auto";
    }
  }
  if (estado.equals("bici o auto")) {
    if ((mouseX>580)&&(mouseX<580+100)&&(mouseY>200)&&(mouseY<200+40)) {
      estado= "bicicleta";
    }
  } 
  if (estado.equals("bici o auto")) {
    if ((mouseX >400)&&(mouseX<400+300) &&(mouseY>300)&&(mouseY<300+400)) {
      estado= "bicicleta";
    }
  }
  if (estado.equals("auto")) {
    if ((mouseX>100)&&(mouseX <100+300)&&(mouseY>500)&&(mouseY<500+40)) {
      estado= "espera";
    }
  }
  if (estado.equals("auto")) {
    if ((mouseX>400)&&(mouseX<400+300)&&(mouseY>500)&&(mouseY<500+40)) {
      estado="cruce semaforo";
    }
  }

  if (estado.equals("espera")) {             //   rect(400, 100, 300, 40);
    if (( mouseX>100)&&(mouseX<100+300)&&(mouseY>100)&&(mouseY<100+40)) {
      estado= "buscar bicicleta";
    }
  }

  if (estado.equals("espera")) {
    if ((mouseX>400)&&(mouseX<400+300)&&(mouseY>100)&&(mouseY<100+40)) {
      estado= "correr";
    }
  }
  if (estado.equals("cruce semaforo")) {    
    if ((mouseX>100)&&(mouseX<100+250)&&(mouseY>100)&&(mouseY<100+40)) {        //    rect(100, 100, 250, 40)

      estado= "robar skate";
    }
  }

  if (estado.equals("buscar bicicleta")) {            // rect( 200, 550, 100, 40);
    if ((mouseX>200)&&(mouseX<200+100)&&(mouseY>550)&&(mouseY<550+40)) {
      estado= "reinicio";
    }
  }
  if (estado.equals("correr")) {          // rect( 200, 550, 100, 40);
    if ((mouseX>200)&&(mouseX<200+100)&&(mouseY>550)&&(mouseY<550+40)) {
      estado= "creditos";
    }
  }
  if (estado.equals("reinicio")) {           //rect(400, 50, 300, 40);
    if ((mouseX>400)&&(mouseX<400+300)&&(mouseY>50)&&(mouseY<50+40)) {
      estado= "click para comenzar";
    }
  }

  if (estado.equals("creditos")) {                  //rect(400, 200, 300, 40);
    if ((mouseX >400)&&(mouseX<400+300)&&(mouseY>200)&&(mouseY<200+40)) {
      estado= "click para comenzar";
    }
  }

  if (estado.equals("bicicleta")) {         //  rect(20, 20, 160, 20);
    if ((mouseX>20)&&(mouseX<20+160)&&(mouseY>20)&&(mouseY<20+20)) {
      estado= "maraton";
    }
  }
  if (estado.equals("bicicleta")) {           //  rect(200, 20, 160, 20); 
    if ((mouseX>200)&&(mouseX<200+160)&&(mouseY>20)&&(mouseY<20+20)) {
      estado="alcantarillas";
    }
  }
  if (estado.equals("alcantarillas")) {              //rect(130,100,100,30);  rect(400,100,350,30);
    if ((mouseX>130)&&(mouseX<130+100)&&(mouseY>100)&&(mouseY<100+30)) {
      estado= "volver";
    }
  }
  if (estado.equals("alcantarillas")) {  
    if ((mouseX>400)&&(mouseX<400+350)&&(mouseY>100)&&(mouseY<100+30)) {
      estado= "rata";
    }
  }

  if (estado.equals("rata")) {            //rect(370,160,100,30);
    if ((mouseX >370)&&(mouseX<370+100)&&(mouseY>160)&&(mouseY<160+30)) { 
      estado= "creditos";
    }
  }
  if (estado.equals("volver")) {             //rect(170,160,100,30);
    if ((mouseX>170)&&(mouseX<170+100)&&(mouseY>160)&&(mouseY<160+30)) {
      estado="reinicio";
    }
  } 
  if (estado.equals("maraton")) {         // rect(400,160,100,30);
    if ((mouseX>400)&&(mouseX<400+100)&&(mouseY>160)&&(mouseY<160+30)) {
      estado="reinicio";
    }
  }

  if (estado.equals("cruce semaforo")) {   //  rect(100, 100, 250, 40);
    if ((mouseX>100)&&(mouseX<100+250)&&(mouseY>100)&&(mouseY<100+40)) {
      estado="robar skate";
    }
  }
  if (estado.equals("robar skate")) {   //rect( 200, 550, 100, 40)
    if ((mouseX>200)&&(mouseX<200+100)&&(mouseY>550)&&(mouseY<550+40)) {
      estado= "reinicio";
    }
  }
  if (estado.equals("cruce semaforo")) {   // rect(400, 100, 250, 40);
    if ((mouseX>400)&&(mouseX<400+250)&&(mouseY>100)&&(mouseY<100+40)) {
      estado= "correr";
    }
  }
}
