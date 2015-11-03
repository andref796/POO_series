//Superclase
import java.util.Arrays;
abstract class Secuencia{
  abstract int compute(int n);
  abstract void display(int term);
  color hue;
  //hue hace referencia a la tonalidad
  int tam;
  //tam hace referencia a la magnitud por la cual se escala la representacion grafica
  int pant;
  // pant hace referencia al ancho y largo de la pantalla,
  int yPos;
  int xPos;
  // las variables pos siguen el movimiento del mause
  int y=1;
  int c=1;
  // estas variables permiten modificar los atributos de las representaciones graficas (tamaño y color)
  Secuencia() {
    background(10,10,1);
    setTam(1);
    setHeight(height/2);
    setWidth(width/2);
  }
  void setTam(int t){
    tam=t;
  }
  int Size(){
    return tam;
  }
  void setPant(int s){
    pant=s;
  }
  int pantalla(){
    return pant;
  }
  void setHeight(int h) {
    yPos = h;
  }
  int height() {
    return yPos;
  }
  void setWidth(int w) {
    xPos=w;
  }
  int width() {
    return xPos;
  }
  void setHue(color h) {
    hue = h;
  }
  color hue() {
    return hue;
  }
    
  abstract String autor(); 
  // funcion para identificar el autor de la serie
  abstract String descripcion();  
  // funcion para realizar una descripcion del funcionamiento de la serie
  int [] toArray(int n) {
    int[] seq = new int[n];
    for (int i=0; i<n; i++)
      seq[i] = compute(i);
    return seq;
  }
  //esta funcion permite ubicar los primeros n terminos de la serie en un arreglo
  
  String toString(int n) {
    return Arrays.toString(toArray(n));
  }
  
  //esta funcion permite ubicar los primeros n terminos de la serie en una cadena
  
 
  void lineChar(int term){// Esta funcion permite evidenciar cualquier serie a modo de grafica de barras 
    // term es la cantidad de terminos que se desea mostrar  
    stroke(255); 
    for(int i=0;i<term;i++){
    line(map(compute(i),0,compute(term),0,pant),i*(pant/term),map(compute(i+1),0,compute(term),0,pant),(i+1)*(pant/term));
    //como es importante que todos los terminos con sus respectivos valores se evidencien en la pantalla, se realiza un remapeo y un escalamiento de los valores presentes
    }
  }  
  void barChar(int term){ // Esta funcion permite evidenciar cualquier serie a modo de grafica de barras 
    // term es la cantidad de terminos que se desea mostrar  
    for (int i=0;i<term;i++){
    rect(0,i*(pant/(term)),map(compute(i),0,compute(term-1),0,pant),pant/(term));
    fill(hue, 200, map(compute(i+1), 0, compute(term), 0, 100));
    //como es importante que todos los terminos con sus respectivos valores se evidencien en la pantalla, se realiza un remapeo y un escalamiento de los valores presentes
    }
  }
}