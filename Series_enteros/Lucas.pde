class Lucas extends Secuencia{
  
  int compute(int n){ // Esta función perdeterminar de manera numerica el n-esimo termino de la serie de lucas
    if(n==0)
    return 2;
    if(n==1)
    return 1;
    if(n>1)
    return compute(n-1)+compute(n-2);
    return -1;
  }
  void display(int term){
    for (int i=0;i<term;i++){
    rect(i*(pant/term),height(),(pant/term),compute(i)/tam); // En este caso, es importante que todos los terminos de la serie se evidencien en la pantalla
    // por lo tanto se usa pant/term para poder escalar la representacion
    // el tamaño de la barra que esta dado por el equivalente del termino en la serie de lucas se puede modificar mediante un keyPressed
    fill(compute(i)%255,(compute(i)+3*hue-c)%255,compute(i+2*c)%255);
    // por lo tanto la representacion grafica de la serie, se evidencia en el tamaño de las barras y el color de las mismas
  }
  }
  
  String autor(){
    String str="El autor de esta serie es François Édouard Anatole Lucas";
    println(str);
    return str;
    // con esta funcion se muestra en pantalla el autor
  }
  String descripcion(){
    String str="Cada numero de esta serie, se define como la suma de sus dos inmediatos anteriores";
    println(str);
    return str;
    // con esta funcion se muestra en pantalla la descripcion
  }
  
}