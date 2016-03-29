#!/usr/bin/perl
# Este programa visualiza el concepto de Variables Escalares en Perl,
# donde se permiten indistintamente cadenas o numero enteros o en coma flotante.
# Todos los numeros perl los trabaja como punto flotante de doble precision
# Observese que las dos asignaciones de num y nam corresponden al mismo numero

# Como las variables escalares dependen del contexto es que cumplen con 
# la funcion de cadenas o numeros, para realizar la comparacion es necesario
# utilizar los simbolos de comparacion normales si se consideran como 
# numeros, y los simbolos de comparacion del shell UNIX, si se consideran como 
# cadenas ( eq, ne, gt, lt , ge, le) x (==,!=,>,<,>=,<=).

print "Cual es tu nombre:";
$nombre=<STDIN>;

# La funcion chop, saca el ultimo caracter que tiene la cadena, puesto
# que el retorno de carro tambies se adoza a la misma.
chop $nombre;
print "Anios:";
$edad=<STDIN>;
chop $edad;
print "Hola, $nombre tu edad de $edad significa que algo viviste.\n";
$num=12.32;
$nam=1232e-2;
$result=$num/$nam;
print "El resultado de $num dividido $nam es $result\n";
if ($num==$nam) {
    print "Los dos numeros coinciden...\n";
    }
    
    
