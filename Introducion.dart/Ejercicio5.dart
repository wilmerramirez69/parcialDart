// lista scream
// Definimos una función llamada `scream` que toma un parámetro de tipo `int` llamado `longitud`
// y devuelve una cadena de texto. La cadena comienza con una "A" mayúscula, seguida de `longitud` "a" minúsculas,
// y termina con una "h!".
String gritar(int longitud) => "A${'a' * longitud}h!";

main() {
  final valores  = [1, 2, 3, 5, 10, 50];
  valores .skip(1).take(3).map(gritar).forEach(print);
}
// Llamamos al método `skip` en la lista `values` para omitir el primer elemento, el número 1.
  // Luego llamamos al método `take` para tomar los siguientes tres elementos, los números 2, 3 y 5.
  // Finalmente, llamamos al método `map` en la lista resultante para aplicar la función `scream`
  // a cada uno de los elementos, creando una nueva lista con las cadenas resultantes.
  // Finalmente, llamamos al método `forEach` en la lista resultante para imprimir cada cadena en la consola.