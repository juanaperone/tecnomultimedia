class Idea{
  
 //campos
 
float x; 
float y; 
float ancho;
float alto;

}

//constructor
Idea(){
  x= 500;
  y= 300;
  ancho= 80;
  alto= 100; 
  
}

void movimiento(){
  x= mouseX;
  y= mouseY; 
}

void dibujar(){
  pushStyle(); 
  background(0);
  fill(255,255,30,90); 
   ellipse(x,y, ancho+10, alto+7);
  fill(#898989);
  rect( x-15, y+48,ancho-50,alto-60); 
   fill(255); 
  ellipse(x,y, ancho, alto);
  stroke(#FFE729);
  line(x,y-20,x,y+35); 
popStyle();
  
}
