class Policias{
  
  Policia[] tras;
  int i;
  Policias(){ 
  
  tras = new Policia[4];   
     for(i=0; i<4; i++)
      tras[i] = new Policia((i*115)+60);
  
    }
  
 
 
 
     void dibujar(){
            
        for(i=0; i<4; i++)
          tras[i].dibujar();
        
     }   
         
      
   float posXp(int i){  
    return tras[i].Px(); 
   }  
  
  float posYp(int i){  
    return tras[i].Py(); 
   }  
   
}
