class Policia {

  float x, y,tam,vel;
  PImage policia;
 

  Policia(int _y) {
    tam = 130;
    x= random(400,1030);
    y= _y;
    policia= loadImage( "policia.png");
    vel = random(25,30);
  }

  void dibujar() {
     
    x = x - random(vel);
    image(policia, x, y, tam, tam-20);
if(x < -100){
       x= random(800,1030);
       vel = random(25,30);

}
}

float Px(){
 return x; 
}  

float Py(){
  return y; 
}  
}
