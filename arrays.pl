#!/usr/bin/perl
# Perl permite la utilizacion de arrays mediante el caracter @.
# Ademas permite asignar listas a array, y utilizar sub-arrays.
# Para referenciar un elementos se considera ese elemento como una
# variable escalar.
# Los ARRAYS COMIENZAN CON 0
# Aquellos elementos que se agreguen extras se les coloca NULL.

@array= (1,"Bote","Negro",4);
print "El array tiene $#array+1 elementos....\n";

# Se crea un subarray con los elementos 0 y 3
@subarray=@array[0,3];

# Se crea otro subarray con los elementos 1 y 2.
@subarray2=@array[1 .. 2];

@array[1 .. 2]=(2,3);
print "El elemento 1 es $array[1], el elemento 0 de subarray2 es $subarray2[0]\n";

# El operador <> tiene en cuenta el contexto, por lo que en este caso, asigna
# todo el valor de STDIN a el array @arreglo.
print "Finalice de tipear con ^D.\n";

@arreglo=<STDIN>;
print @arreglo;
