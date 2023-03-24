// implementar una interfaz

import 'dart:math';
//Creamos una interfaz astracta llamada Forma que toma como parametro tipo string
abstract class Forma {
  factory Forma(String tipo) {
    if (tipo == 'circulo') return Circulo(2);
    if (tipo == 'cuadrado') return Cuadrado(2);// si el tipo no es cuadrado ni circulo lanzamos una excepcion
    throw 'Can\'t create $tipo.';
  }
  num get area;
}
// creamos una clase llamda circulo que implementa la interfaz forma 
class Circulo implements Forma {
  final num radio;
  Circulo(this.radio);// definimos un contructor llamado circulo que toma como parametro num
  num get area => pi * pow(radio, 2);
}
// creamos una clase llamda Cuadrado que implementa la interfaz forma 
class Cuadrado implements Forma {
  final num lado;//final se utiliza cuando el valor de una variable no cambiará,
  Cuadrado(this.lado);// definimos un contructor llamado circulo que toma como parametro num
  num get area => pow(lado, 2);//funcion estandar para exponencial pow y pi es una constante que exporta la libreria 
}


// creamos una clase llamda circulosimulacro que implementa la interfaz Circulo
class circulosimulacro implements Circulo {
  num area = 0;// definimos una propiedad area que esun numero y lo inicializamos en cero
  num radio = 0;
}

main() {
  final circulo = Forma('circulo');//creamos una instancia de circulo y cuadrado utilizando el contructor forma de interfaz
  final cuadrado = Forma('cuadrado');
  print(circulo.area);// mandamos a inprimir a pantalla
  print(cuadrado.area);
}
