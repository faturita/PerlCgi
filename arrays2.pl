#!/usr/bin/perl
# Los arrays pueden ser asignados a variables escaleres.
# Esto es debido a que el valor de @array representa todos los valores que
# este contiene.

# Creacion del array.
@array=(1,3,5,7,9,11,13,15);


# Creacion de una variable escalar en base a los valores del array.
$elementos = "Los elementos del array son: @array\n";
$primos = "Los numeros primos del array son: @array[0,1,2,3,5,6]\n";

# Observese en la salida del programa que al poner el array entre comillas
# se generan los espacios entre los elementos.

# Para que perl interprete que el @ esta siendo usado, literalmente como
# un caracter, debe anteponerse la \.

print $elementos;
print $primos;

# Imprime el vector con los argumentos sin necesidad de realizar la iteracion 
# explicitamente.
print "@ARGV\n";
