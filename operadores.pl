#!/usr/bin/perl
@array = ("primero","segundo","tercero","cuarto","quinto");

# shift quita el primer elemento de una lista y lo devuelve
print shift @array;
print "\n\r";

# unshift coloca un elemento en una lista en la primera posicion y devuelve
#     el numero de elementos del nuevo array
#     Soporta mas de un elemento para agregar, incluso otro array 
$coutn = unshift(@array,"Ahorayosoyelprimero");

# push y pop trabajan igual pero con los elementos del final del array

print @array;
print "\n\r@array\n\r";

#split y join trabajan juntos tambien, y
#  split(/patron/, variable cadena);     Toma una cadena y la separa en elementos
#				    devolviendo el array con los elementos separados
				    
# join(patron, array)                  Realiza el proceso inverso.


# El operador grep, sirve para seleccionar solo los que se desean.
#  grep (/[patron-]/, array)     Devuelve un array con los elementos que solo
#				cumplen con el patron.


# splice (array, offset, [cantidad de elementos maximas], lista para reemplazar)
#   Devuelve una lista con los elementos eliminados del array a partir de la posicion
#   offset, y como maximo los detallados en el tercer argumento.


# . Se utiliza para concatenar dos cadenas.
# x se utiliza para repetir una cadena
print '#' x 80;

# El operador   length(cadena)  devuelve la longitud de la cadena
print "Cuantas letras ahi en $array[0]:".length($array[0]);

# Los operadores index y reindex sirven para devolver el indice en el que 
# una subcadena se encuentra dentro de una cadena desde el principio (index)
# o desde el final

# substr(EXPR, OFFSET, [length]);


# Operador de sustitucion s///
#       s/PATRON/CADENA REEMPLAZO/[g][i][e][o]



