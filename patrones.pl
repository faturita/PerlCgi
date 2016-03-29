#!/usr/bin/perl
# El operador / / sirve para identificacion de patrones.

# En este caso, se realiza la impresion de $_ si $pattern se encuentra en $_
# Puesto que utiliza el identificador <> revisa toda la entrada standar y los
#   archivos dados en la linea de comandos.


# El / /o  indica el patron es una constante y esto ayuda a aumentar y 
# mejorar el rendimiento del script.


$pattern=shift @ARGV;
while (<>) {
    print if ( /$pattern/o );
    }
    
    
# @see enterprise.pl
# @see patrones2.pl
# @see uid.pl
