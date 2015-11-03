//Subclase
class Factorial extends Secuencia{
  
  
  int compute(int n){ // Esta función perdeterminar de manera numerica el n-esimo termino de la serie de los numeros factoriales
    if (n==0)
    return 1;
    if (n==1)
    return 1;
    if (n>1)
    return n*compute(n-1);
    return -1;
  }
  void display(int term){
    for (int i=term;i>=0;i--){ // se debe de empezar desde el numero mas grande para poder ver su representacion grafica a modo de circulos concentricos
    // de lo contrario los valores mas pequeños no podrian observarse
    fill(compute(i+hue+c)%255,(compute(i)+3*hue-c)%255,compute(i+2*c)%255);
    ellipse(width(),height(),compute(i)/tam,compute(i)/tam);
    // Asi pues, la serie esta representada de manera grafica en el tamaño de que pueda tener la elipse y su color
  }
  }
  String autor(){
    String str="La serie factorial fue desarrollada por  Christian Kramp";
    println(str);
    return str;
  }
  String descripcion(){
    String str="Se define como el producto de todos los numeros enteros positivos desde 1 hasta un numero dado n";
    println(str, '\n', '\n');
    return str;
  }
  
}