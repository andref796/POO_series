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