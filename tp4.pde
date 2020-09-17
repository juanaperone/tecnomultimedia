// tp 4 arrays 

String estados;
String[] textos = new String[25];  

PImage[] estado= new PImage[14];

PImage logo;

int i; 
 
void setup(){
  size(800, 600);
  surface.setResizable(true); 
   estados= "click para comenzar";
  // mis dialogos: 
  textos[0]="click para comenzar";
  textos[1]="CANDACE: ¡Mama Phineas Y Ferb no estan en casa, seguro estan planeando algo! \n MAMA: Candace tranquila, deja a tus hermanos, deben estar jugando. \n CANDACE:¡te voy a demostrar que siempre se meten en problemas! los voy a ir a buscar. MAMA: Bueno como quieras, pero NO te lleves el auto"; 
  textos[2]="start"; 
  textos[3]="¿ auto o bici ?" ; 
  textos[4]="esperar al semaforo"; 
  textos[5]="cruzar en rojo";
  textos[6]="robar Skate";
  textos[7]="correr"; 
  textos[8]="buscar bicicleta";  
  textos[9]="Mamá se enojó con vos.   Reiniciar";
  textos[10]="el dueño del skate descubrió que se lo robaste y te delató con tu mamá";
  textos[11]="siguiente";
  textos[12]="corriendo chocaste con uno de tus hermanos";
  textos[13]="¡lo lograste!   Reiniciar"; 
  textos[14]="Perone Juana, comision 2";
  textos[15]="Cuando llegaste a casa mamá se enojó con vos por llevarte el auto";
  textos[16]="auto";
  textos[17]= "bici";
  textos[18]="atravesar el maraton";
  textos[19]="atravesar bajando por la alcantarilla"; 
  textos[20]="volver"; 
  textos[21]="usar rata para alcanzar el techo";
  textos[22]="al volver te espera la policia por haber dejado tu bicicleta olvidada";
  textos[23]="al salir te encontraste con Ferb y lo llevaste con tu mama";
  textos[24]="Al meterte en la carrera la policía te saca";

  // mis estados=

  // Mis imagenes= 
  
  for(int i= 0; i < estado.length ; i ++){ 
    estado[i]= loadImage("estado"+i+".png"); 
   logo= loadImage("logo.png");
  }
  
  
  }
  

 
  void draw(){
    // estado 1
    background(0); 
   if ( estados.equals( "click para comenzar")) {
       image(logo ,0,0 ,width/2, height/2);
    fill(0, 255, 0, 100);
    boton (100, 475);
     textSize(20);
       fill(0);
       text(textos[0],130,500); 
  
 }else if (estados.equals("conversacion")){
     textSize(15);
     image(estado[13],0,0, width, height); 
     text(textos[1], 10, 50);
     text(textos[2],  50, 500, 300, 680); 
   } else if ( estados.equals( "bici o auto" )) {
image(estado[0],0,0,width,height); 
text(textos[3], 70,40); 
 fill(100);
    boton2(180, 200);
     fill(100);
    boton2(580, 200);
    fill(0); 
text(textos[16], 200,220);
text(textos[17], 600, 220); 
   }else if (estados.equals("auto")){
     image( estado[1],0,0, width, height); 
         fill(0, 255, 0, 100);
    boton(80, 500);
    fill(0, 255, 0, 100);
    boton(400, 500);
    fill(0); 
    text(textos[4], 100,530);
    text(textos[5], 400,530);
   } else if(estados.equals("cruce semaforo")){
     image(estado[5],0,0,width,height);
     fill(0, 255, 0, 100);
    boton(70, 100);
    fill(0, 255, 0, 100);
    boton(400, 100);
    fill(0);
    text(textos[6], 100,130);
    text(textos[7],400,130); 
   }else if(estados.equals("espera")){
     image(estado[3],0,0, width, height);
     fill(0, 255, 0, 100);
    boton(70, 100);
    fill(0, 255, 0, 100);
    boton(400, 100);
    fill(0);
    text(textos[7],100,130);
    text(textos[8], 400,130); 
 
  //se eligio semaforo
 }else if(estados.equals("robar skate")){
   image(estado[6], 0, 0 , width, height); 
    fill(0, 255, 0, 100);
    rect(100, 500, 520, 40);
     fill(0, 255, 0, 100);
    boton2( 200, 550);
    fill(0);
    text(textos[10], 100,530);
    text(textos[11], 210,580);
 }else if( estados.equals("correr")){
   image(estado[4],0,0,width,height); 
   fill(0, 255, 0, 100);
    rect(100, 500, 420, 40);
 fill(0, 255, 0, 100);
    rect(100, 500, 420, 40);
    fill(0);
    text(textos[12], 120,530);
    text(textos[11],210,580);
 }else if(estados.equals("creditos")){
   image(estado[11],0,0,width,height);
   boton(300, 30);
    boton(400, 200);fill(0);
    text(textos[14],320,50); 
    fill(0);
    text(textos[13], 410, 230); 
   fill(0, 255, 0, 100);
    //boton(300, 30);
    //boton(400, 200);
   
 }else if(estados.equals("reinicio")){
   image(estado[8],0,0,width,height);
     fill(0, 255, 0, 100);
    boton(400, 50);
    fill(0);
    text(textos[9], 410,68);
 }else if (estados.equals("buscar bicicleta")){
   image( estado[12],0,0,width,height);
   fill(0, 255, 0, 100);
    rect(100, 500, 483, 40);
    fill(0);
    text(textos[15], 100,530);
     fill(0, 255, 0, 100);
    rect( 200, 550, 100, 40);
    fill(0);
    text(textos[11],210,580);
   // ----------------------------------------------------------------------------
    
    //se eligio  bicicleta
    
 }else if(estados.equals("bicicleta")){
   image(estado[2],0,0, width, height);
    boton(10, 20);
    fill(0);
    text(textos[18], 20,34);
    boton(200, 20);
    fill(0);
    text(textos[19],200,34);
    
 }else if(estados.equals("alcantarillas")){
   image(estado[9],0,0,width, height);
    boton2(130, 100);
    fill(0);
    text(textos[20], 140,120);
   boton(400, 100);
    fill(0);
    text(textos[21],410,120);
    
 }else if(estados.equals("maraton")){
   image(estado[7],0,0,width,height);
   fill(0, 255, 0, 100);
    rect(110, 100, 400, 30);
    fill(0);
    text(textos[24], 120,120);
   boton2(380, 160);
    fill(0);
    text(textos[11],405,180);
  //se eligio alcantarillas
 }else if(estados.equals("rata")){
   image(estado[10],0,0,width,height);
   fill(0, 255, 0, 100);
    rect(130, 100, 660, 30);
    fill(0);
    text(textos[23], 140,120);
   boton2(350, 160);
    fill(0);
    text(textos[11], 375,180);
    
      } else if ( estados.equals( "volver" )) {
   image(estado[7],0,0,width,height);
   fill(0, 255, 0, 100);
    rect(130, 100, 660, 30);
    fill(0);
    text(textos[22], 140,120);
     fill(0, 255, 0, 100);
    rect(170, 160, 100, 30);
    fill(0);
    text(textos[11],175,180);
  }
  }
  
  void mousePressed(){
    
  if (estados.equals("click para comenzar")) {


    if ((mouseX > 100) &&( mouseX<100+300) &&( mouseY > 475 )&& (mouseY < 500+30)) {  //rect(100, 475, 300, 30);

      estados= "conversacion";
    }
  }

  if (estados.equals("conversacion")) {

    if ((mouseX > 50 )&&( mouseX < 50+80) && ( mouseY > 500) && (mouseY< 500+80)) {

      estados= "bici o auto";
    }
  }
  if (estados.equals("bici o auto")) {

    if (( mouseX >180)&&(mouseX<180+100)&&(mouseY>200)&&(mouseY<200+40)) {  //rect(180, 200, 100, 40);
      estados="auto";
    }
  }
  if (estados.equals("bici o auto")) {
    if ((mouseX>580)&&(mouseX<580+100)&&(mouseY>200)&&(mouseY<200+40)) {
      estados= "bicicleta";
    }
  } 
  if (estados.equals("bici o auto")) {
    if ((mouseX >400)&&(mouseX<400+300) &&(mouseY>300)&&(mouseY<300+400)) {
      estados= "bicicleta";
    }
  }
  if (estados.equals("auto")) {
    if ((mouseX>100)&&(mouseX <100+300)&&(mouseY>500)&&(mouseY<500+40)) {
      estados= "espera";
    }
  }
  if (estados.equals("auto")) {
    if ((mouseX>400)&&(mouseX<400+300)&&(mouseY>500)&&(mouseY<500+40)) {
      estados="cruce semaforo";
    }
  }

  if (estados.equals("espera")) {             //   rect(400, 100, 300, 40);
    if (( mouseX>100)&&(mouseX<100+300)&&(mouseY>100)&&(mouseY<100+40)) {
      estados= "buscar bicicleta";
    }
  }

  if (estados.equals("espera")) {
    if ((mouseX>400)&&(mouseX<400+300)&&(mouseY>100)&&(mouseY<100+40)) {
      estados= "correr";
    }
  }
  if (estados.equals("cruce semaforo")) {    
    if ((mouseX>100)&&(mouseX<100+250)&&(mouseY>100)&&(mouseY<100+40)) {        //    rect(100, 100, 250, 40)

      estados= "robar skate";
    }
  }

  if (estados.equals("buscar bicicleta")) {            // rect( 200, 550, 100, 40);
    if ((mouseX>200)&&(mouseX<200+100)&&(mouseY>550)&&(mouseY<550+40)) {
      estados= "reinicio";
    }
  }
  if (estados.equals("correr")) {          // rect( 200, 550, 100, 40);
    if ((mouseX>200)&&(mouseX<200+100)&&(mouseY>550)&&(mouseY<550+40)) {
      estados= "creditos";
    }
  }
  if (estados.equals("reinicio")) {           //rect(400, 50, 300, 40);
    if ((mouseX>400)&&(mouseX<400+300)&&(mouseY>50)&&(mouseY<50+40)) {
      estados= "click para comenzar";
    }
  }

  if (estados.equals("creditos")) {                  //rect(400, 200, 300, 40);
    if ((mouseX >400)&&(mouseX<400+300)&&(mouseY>200)&&(mouseY<200+40)) {
      estados= "click para comenzar";
    }
  }

  if (estados.equals("bicicleta")) {         //  rect(20, 20, 160, 20);
    if ((mouseX>20)&&(mouseX<20+160)&&(mouseY>20)&&(mouseY<20+20)) {
      estados= "maraton";
    }
  }
  if (estados.equals("bicicleta")) {           //  rect(200, 20, 160, 20); 
    if ((mouseX>200)&&(mouseX<200+160)&&(mouseY>20)&&(mouseY<20+20)) {
      estados="alcantarillas";
    }
  }
  if (estados.equals("alcantarillas")) {              //rect(130,100,100,30);  rect(400,100,350,30);
    if ((mouseX>130)&&(mouseX<130+100)&&(mouseY>100)&&(mouseY<100+30)) {
      estados= "volver";
    }
  }
  if (estados.equals("alcantarillas")) {  
    if ((mouseX>400)&&(mouseX<400+350)&&(mouseY>100)&&(mouseY<100+30)) {
      estados= "rata";
    }
  }

  if (estados.equals("rata")) {            //rect(370,160,100,30);
    if ((mouseX >370)&&(mouseX<370+100)&&(mouseY>160)&&(mouseY<160+30)) { 
      estados= "creditos";
    }
  }
  if (estados.equals("volver")) {             //rect(170,160,100,30);
    if ((mouseX>170)&&(mouseX<170+100)&&(mouseY>160)&&(mouseY<160+30)) {
      estados="reinicio";
    }
  } 
  if (estados.equals("maraton")) {         // rect(400,160,100,30);
    if ((mouseX>400)&&(mouseX<400+100)&&(mouseY>160)&&(mouseY<160+30)) {
      estados="reinicio";
    }
  }

  if (estados.equals("cruce semaforo")) {   //  rect(100, 100, 250, 40);
    if ((mouseX>100)&&(mouseX<100+250)&&(mouseY>100)&&(mouseY<100+40)) {
      estados="robar skate";
    }
  }
  if (estados.equals("robar skate")) {   //rect( 200, 550, 100, 40)
    if ((mouseX>200)&&(mouseX<200+100)&&(mouseY>550)&&(mouseY<550+40)) {
      estados= "reinicio";
    }
  }
  if (estados.equals("cruce semaforo")) {   // rect(400, 100, 250, 40);
    if ((mouseX>400)&&(mouseX<400+250)&&(mouseY>100)&&(mouseY<100+40)) {
      estados= "correr";
    }
  }
}
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
