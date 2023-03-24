// Parametros Opcionales 

import 'dart:math'; // importamos la libreria dart math que es calcula matematicos

class Rectangulo { // creamos una Clase llamada Bicleta.
  int ancho; // con sus repetivas variables 
  int altura;
  Point origen;

///Agregamos un contructor llamado Rectangulo con los parametros this para asignar valores
  Rectangulo({this.origen = const Point(0, 0), this.ancho = 0, this.altura = 0});
// points Especifica un valor prederterminado para la instancia origen

  @override ////indica al analizador que anularas un miembro de manera intencional

  //este.origen, este.ancho y este.alto son parámetros opcionales con nombre.
  // Los parámetros con nombre se encierran entre llaves ({}).
  String toString() =>
      'origen: (${origen.x}, ${origen.y}), ancho: $ancho, altura: $altura';
}

main() {
  print(Rectangulo(origen: const Point(10, 20), ancho: 100, altura: 200));
  print(Rectangulo(origen: const Point(10, 10)));
  print(Rectangulo(ancho: 200));
  print(Rectangulo());
}