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