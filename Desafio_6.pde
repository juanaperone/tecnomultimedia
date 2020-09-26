Idea id; 

void setup(){
  
  size (1000,800);
  
  id= new Idea(x,y,ancho,alto);
  
}

void draw(){
  
  id.movimiento(); 
  id.dibujar();
}
