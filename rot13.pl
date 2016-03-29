#!/usr/bin/perl

# Utilizacion del operador 
#    tr/clase caracteres a buscar/caracteres de reemplazo/ [c][d][s]
#                            complementar borrar y reducir los searchs

while (<>) {
    tr/a-zA-Z/n-za-mN-ZA-M/;
    print;
    }
    
    