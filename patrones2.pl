#!/usr/bin/perl
# @description 
#    Ejemplifica el uso de patrones y utilidades para reconocimientos de
#    patrones.

chop($entrada=<STDIN>);

# Cuantificadores *(0 o mas)  +(1 o mas) ?(0 o 1)    {n,m}

if ( $entrada =~ /Rod{0,1}r?i?g?o?/i )	{
    print "Su nombre verdadero es Rodrigo.\n";
    }
    
# El caracter . representa cualquier caracter.
# Clases de caracteres [-_] ^ negar


if ( $entrada =~ /[a-z_A-Z]/ )	{
    print "La entrada son solo caracteres de texto.\n";
    }
    
# Anclajes....    
#            ^ $  Comienzo y final (resp)
#		\b \B \w \W  Limites entre las palabras.

if ( $entrada =~ /^$/ ) {
    print "Debe introducir informacion valido, no simplemente apretar ENTER.\n";
    }

# Alternancia   Caracter | 

if ( $entrada =~ /pedro|ignacio/i ) {
    print "-Bienvenido Senor Pedro Ignacio.\n";
    }
    
# Los parentesis pueden utilizarse para remarcar que son sentencias que 
# deben almacenarse en el buffer de memoria para ser luego reutilizadas
# usando /n  con un numero depende de cuantos parentesis se usaran para
# recordar.

# Este codigo busca el patron que contenga rr o ll dos veces en la misma palabra
# Al usar los parentesis el patron encontrado se copia a la memoria y se vuelve a 
# comprobar usando /1

if ( $entrada =~ /(rr|ll).*\1/ ) {
    print "La palabra ingresada una letra doble repetida del idioma castellano.\n";
    }
                        
    
    