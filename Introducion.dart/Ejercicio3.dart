//Creacion de una Fabrica 

import 'dart:math'; // importamos la libreria dart math que es calcula matematicos

abstract class Forma { //Cuando creamos una clase astracta estamos indicando que esta clase 
//va hacer utilizada como clase bASE DE OTRA ya que ella misma no puede instanciar
  factory Forma(String tipo) {

    //Definición de la fábrica abstracta "cuadrado" que devuelve una instancia de una subclase de "cuadrado" 
    //según el parámetro de tipo "type
    if (tipo == 'circulo') return Circulo(2);// creamos y devolvemos una instancia de clase circulo
    if (tipo == 'cuadrado') return Cuadrado(2);// si el tipo no es cuadrado ni circulo lanzamos una excepcion
    throw 'Can\'t create $tipo.';
  }
  num get area;// metodo astracto que debe ser implementado por las subclases "cuadrado"
}
//Definimos las suclases llamada cvirculo
class Circulo implements Forma {// la subclase coirculo se implementa de la clase forma
  final num radio;//final se utiliza cuando el valor de una variable no cambiará,
  Circulo(this.radio);
  num get area => pi * pow(radio, 2);// funcion estandar para exponencial pow y pi es una constante que exporta la libreria 
}

class Cuadrado implements Forma {
  final num lado;//final se utiliza cuando el valor de una variable no cambiará,
  Cuadrado(this.lado);//Agregamos un contructor llamado Cuadrado con los parametros this para asignar valores
  num get area => pow(lado, 2);
}

main() {
  final circulo = Forma('circulo');
  final cuadrado = Forma('cuadrado');
  print(circulo.area);
  print(cuadrado.area);
}
/*El ejemplo de uso finalmente crea un objeto "Circle" y un objeto "Square" usando la fábrica abstracta
"Shape", y luego imprime el área de cada objeto usando el método "area" implementado por sus respectivos
subclases.*/