  PImage img; 
  PImage img2; 
  PImage img3; 
  PImage img4; 
  
  PFont font;
  
  float posXnube1, posXnube2 , posXnube3, posXnube4, posXnube5, posXnube6; 
  float posYglobo1,posYglobo2, posYglobo3, posYglobo4, posYglobo5, posYglobo6, posYglobo7, posYglobo8, posYglobo9, posYglobo10, posYglobo11; 
  float posXup1, posYup1; 
  int op; 
  int posYprotagonistas;
  int posXnombres; 
  float posXup2; 
  float titulo; 
void setup(){
  size(600,400);
  background(#87F7DA); 
  img= loadImage("vector_nube1.png" ); 
  font= loadFont("ComicSansMS-48.vlw"); 
  textFont(font);
  img2= loadImage("globo2.png");
  img3= loadImage("foto_up.png"); 
  img4= loadImage("up_foto2.png"); 
  //valores iniciales de variables:
  op= 0; 
  posXnube1= 0;
  posXnube2 = 10;
  posXnube3= 0;
  posXnube4= 380;
  posXnube5= 295;
  posXnube6= 360; 
  posXup1= 600;
  
  posYglobo1= 600;
  posYglobo2= 630;
  posYglobo3= 680;
  posYglobo4= 600;
  posYglobo5= 700;
  posYglobo6= 690;
  posYglobo7= 630;
  posYglobo8= 600;
  posYglobo9= 700;
  posYglobo10= 650; 
  posYglobo11= 1000;
  posYup1= 1000;
  
  posYprotagonistas= 1000; 
  posXnombres=1300; 
  posXup2= -1900;
  titulo= -2000; 

  
}
 
 void draw(){
     background(#87F7DA); 
  op++; 
   fill(op); 
 text("DIRECCIÓN", 180, 200); 
 textSize(40);
 text("Pete Docter - Bob Peterson", 70, 250);
 fill(0); 
  
 image(img,posXnube1,0,width/3,height/3); 
 image(img,posXnube2,100,width/2,height/2); 
 image(img,posXnube3,250,width-400,height/2); 
 image(img, posXnube4,5, width/3,height/3);
 image(img,posXnube5,100,width/2, height/2);
 image(img,posXnube6,280,width/3,height/3);
 
 image(img2,1,posYglobo1, width/2, height/2); 
 image(img2,-100, posYglobo2, width/2, height/2); 
 image(img2,100,posYglobo3, width/2, height/2);
 image(img2,300,posYglobo4,width/2,height/2); 
 image(img2,200,posYglobo5,width/2,height/2);
 image(img2,400,posYglobo6,width/2,height/2);
 image(img2,-10,posYglobo7,width/2,height/2); 
 image(img2,0,posYglobo8,width/2,height/2);
 image(img2,100,posYglobo9,width/2,height/2);
 image(img2,400,posYglobo10,width/2,height/2); 
 text("PROTAGONISTAS", 120,posYprotagonistas); 
 image(img2,-300,posYglobo11,width*2,height*3);
 text("Edward Asner, Christopher Plummer", posXnombres, 200); 
 image(img3,posXup1, posYup1,width,height); 
 image(img4,posXup2, 0,width,height); 
 text( "UP!",200, titulo); 


 //actualizacion de variables: 
 posXnube1= posXnube1 - 2; 
 posXnube2 -=2;
 posXnube3 -=2;
 posXnube4 +=2;
 posXnube5 +=2;
 posXnube6 +=2;
 
 posYglobo1 -=2;
 posYglobo2 -=2;
 posYglobo3 -=2;
 posYglobo4 -=2;
 posYglobo5 -=2;
 posYglobo6 -=2;
 posYglobo7 -=2;
 posYglobo8 -=2;
 posYglobo9 -=2;
 posYglobo10 -=2;
 posYglobo11 -=2; 
 posXup1 -=1;
 posYup1 -=1; 
 posYprotagonistas -=2; 
 posXnombres -=2; 
 posXup2 +=1; 
 titulo += 1;
 
 
 
  
 
 }
