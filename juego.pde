class Juego {
  String estado; 
  PImage ini,per,gan;
  Fondo fondo;
  Personaje personaje;
  Policias policia;
  int i,vidas; 
String jugar, perdiste, ganaste;

  Juego() {
    // pos Inicial de mi personaje:
    fondo= new Fondo();
    personaje= new Personaje ();
    policia= new Policias();
    vidas= 3;
    ini= loadImage( "comenzar.png");
    per= loadImage( "perdiste.png");
    gan= loadImage( "ganaste.png");
    estado = "inicio";
    jugar = "Haz click para comenzar a jugar \n LLEGA A LA META SIN TOCAR A LOS POLICIAS!"; 
    perdiste= " Haz tocado un policia! \n Haz click para volver a jugar";
    ganaste= "LLEGASTE! \n Haz click para volver a jugar";
  }



 void colision(){
    
    
    for(i=0; i<4; i++){
       if(dist(personaje.Px(),personaje.Py(),  policia.posXp(i),policia.posYp(i)) < 60)
        estado = "perdiste";
    }     
   // println(" X = ", policia.posXp(0));      
  }  


 void ganaste(){
   
   if(personaje.Px() > 748)
     estado = "ganaste"; 
   
 }  


  void dibujar() {
    if(estado == "inicio"){
       image(ini, 0, 0, width, height);
       textSize(20);
       text( jugar, 100, 400); 
       if(mousePressed)
         estado = "nivel1";
    }else
     if(estado == "nivel1"){
         fondo.dibujar();
         policia.dibujar();
         personaje.dibujar();
         colision();
         ganaste();

    }else
      if(estado == "perdiste"){
        image(per, 0, 0, width, height);
        textSize(20);
        text(perdiste , 200, 80);
         if(mousePressed){
         estado = "inicio";
         personaje= new Personaje ();
         policia= new Policias();
         }
      } else
         if(estado == "ganaste"){
        image(gan, 0, 0, width, height);
        fill(#FFF40D);
        rect(80,80, 300,80);
        fill(0);
        textSize(20);
        text(ganaste, 80, 100);
        if(mousePressed){
         estado = "inicio";
         personaje= new Personaje ();
         policia= new Policias();
         }
         }
  }

  void teclado() {
    personaje.mover();
  }

//  void perdervidas() {
//    for (int i= 0; i<4; i++) {

//      boolean contacto= policia[i].x<personaje.x&& policia[i].x<personaje.x + personaje.y && policia[i].y > personaje.y && policia[i].y< personaje.y + personaje.y*2;
//      if (contacto) {
//        vidas--;
//        background (255, 255, 0);
//      }
//    }
  }
