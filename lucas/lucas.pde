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