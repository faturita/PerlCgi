#!/usr/bin/perl
# Este programa es una version en perl de "echo" del shell
# Muestra basicamente como se utilizan los array.
# El array @ARGV tiene todos los parametros ingresados por la linea de 
# entrada del programa. Si se coloca $# delante del nombre de un array, 
# se devuelve el numero de elementos que contiene el array.
# El primer elemento del array ARGV es, a diferencia de C, el primer argumento.
# El nombre del programa se puede hallar en la variable del sistema $0

# La funcion foreach es un for.

foreach $arg (0 .. $#ARGV) {
    print $ARGV[$arg];
    if ( $arg == $#ARGV ) {
	print "\n";
    } else {
	print " ";
    }
}

