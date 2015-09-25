//Esta funcion presenta los números de la serie de lucas
int luc(int n){
 if(n==0)
 return 2;
 if(n==1)
 return 1;
 if(n>1)
 return luc(n-1)+luc(n-2);
 return -1;
}
int n=25;
//Por medio de esta funcion se presentan por consola los n primeros caracteres y el n-esimo caracter de la serie
void setup(){
  size(1000,600);
  primerosN(n);
  nesimo(n);
}
int y=1;
int c=1;
//Esta funcion grafica rectangulos cuyo color y tamaño depende de los valores que toma la serie de lucas
void draw(){
  for(int j=0;j<=n;j++){
    fill((luc(c))%255,(luc(c))%255,(luc(j)/c)%255);
    rect(j*50/y,0/y,50/y,luc(j)/y);
  }
}
//Esta funcion retorna los n primeros numeros de la serie de lucas
void primerosN(int n){
  print("Los n primeros caracteres son: ");
  for(int i=0;i<=n;i++){;
    print(luc(i),"  ");
  }
}
//Esta funcion retorna en n-ésimo caracter de la serie de lucas
void nesimo(int n){
  print("El n-esimo numero de la serie de lucas es: ");
  print(luc(n));
}
//Esta funcion permite cambiar el color y el tamaño de la representacion grafica de la serie, al presionar las teclas indicadas en los condicionales
void  keyPressed() {
if(key==CODED){
  if(keyCode==RIGHT){
    background(100);
    y++;
  }else if(keyCode==LEFT){
   background(100);
   y--;
    if(y<1){
    y=1;
    }   
  } 
 }
 if(key==CODED){
  if(keyCode==UP){
    background(100);
    c++;
  }else if(keyCode==DOWN){
   background(100);
   c--;
    if(c<1){
    c=1;
    }   
  } 
 } 
}