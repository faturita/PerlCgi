#!/usr/bin/perl
# Programa en perl que muestra la creacion y uso de los gestores de archivos.
# Este programa debe estar correcto, caso contrario el interprete preanalizara
#   su contenido y si esta incorrecto no lo ejecutara en su totalidad.

open(INP, "ls |");
while (<INP>) {
    ++$files;
    }
    
print "Hay $files archivos en este directorio. \n";
