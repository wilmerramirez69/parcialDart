//Creacion de Clase Simple en dart

class Bicicleta {  // creamos una Clase llamada Bicleta.
//Con sus respetivas variables de instancia privada con métodos get y métodos set.
//variables deben inicializarse porque no son anulables.
  int cadencia;
  int _velocidad = 0; //En dart declaramos una varible privada con guion bajo que solo puede ser acessible dentro del clase 
  int get velocidad => _velocidad;//agregamos un get acceder ala variable velocidad fuera de la clase 
  int engranaje;

// la lista de parámetros de un constructor para asignar valores a variables de instancia.
  Bicicleta(this.cadencia, this.engranaje);//Agregamos un contructor llamado bicicleta con los parametros this para asignar valores
 
 //Creamos un Metodo para reducir la velocidad del la bicicleta
  void aplicarfreno(int decremento) {
    _velocidad -= decremento;
  }

 //Creamos un Metodo para Acelerar la velocidad del la bicicleta

  void Acelerar(int incremento) {
    _velocidad += incremento;
  }

  @override //indica al analizador que anularas un miembro de manera intencional
  String toString() => 'Bicicleta: $_velocidad mph'; //toString que puedes anular un resultado mas util
}

void main() { //crea una instancia de la clase bicicleta y la manda a imprimir a pantalla
  var Bicicleta2 = Bicicleta(2, 1);
  print(Bicicleta2);
}