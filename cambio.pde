//void cambio ( String pantalla , float x){
//  println("¿Qué pantalla pasé de parámetro? Pasé: ", pantalla);
//println("¿Qué variable pasé de float x? Pasé: ", x);
//  if (( mouseX > x) && (mouseX <  x + 300)  &&  (mouseY > 475 )  && ( mouseY < 475 + 50 )){
// estados= pantalla;
 
//  }
// }
 
 boolean botOver( int px, int py){
   if(mouseX > px && mouseX < px+ 300 && mouseY> py && mouseY < py +50){
     return true;
   }
   return false;
 }
 
