#!/usr/bin/perl
# Este programa muestra la utilizacion de la variable $_, que es por defecto
# argumento de muchas funciones en perl. En este caso del foreach

foreach (0 .. $#ARGV) {
    print $ARGV[$_];
    if ( $_ == $#ARGV ) {
	print "\n";
    } else {
	print " ";
    }
}

