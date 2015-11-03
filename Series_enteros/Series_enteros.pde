Secuencia sec;
boolean serie;
int term=12;
int c=1;
int y=1;
int x;
void setup(){
  size(600,600);
  //Iniciacion del objeto
  sec = new Factorial();  
}
void draw(){
  sec.setPant(600); // Esta operacion se usa para poder escalar el tamaño todas las representaciones
  background(0);
  // los condicionales se usan para cambiar las diferentes representaciones de la serie.
  //ya sea la representacion diseñada al principio del semestre, o las representaciones de linea y grafica de barras
  if(x==1){  //representacion libre
  sec.setHeight(mouseY);
  sec.setWidth(mouseX);
  sec.display(term);
  }
  if(x==2){ //representacion a modo de grafico de barras
    sec.barChar(term);
  }
  if(x==3){ //representacion a modo de grafica de lineas
    sec.lineChar(term);
  }

}
void mousePressed() { //esta funcion permite intercambiar las series que se quieren mostrar, en este caso lucas y factorial
  serie= !serie;
  sec= serie? new Lucas():new Factorial();
  sec.autor();
  sec.descripcion();
  println(sec.toString(term));
  println(sec.toArray(term));
  c=1;
  y=1;
}
void  keyPressed() { //con esta funcion podemos intercambiar las diferentes representaciones
// dependiendo del condicional establecido en el draw
if (key==ENTER)
x=1;
if(key==TAB)
x=2;
if(key==BACKSPACE)
x=3;
if(key==CODED){
  // estas funciones permiten cambiar tanto el color como el tamaño de la representacion realizada al inicio del semestre
  // Y hace referencia al tamaño
  // C hace referencia al color
  if(keyCode==RIGHT)
   sec.setTam(y++);
  if(keyCode==LEFT)
   sec.setTam(y--);
  if(y==0)
  y=1;
  if(keyCode==UP)
   sec.setHue(c++);
  if(keyCode==DOWN)
   sec.setHue(c--);
   if(c==0)
   c=1;
 } 
}