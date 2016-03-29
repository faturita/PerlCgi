#!/usr/bin/perl
# Este archivo envia un email a faturita con informacion sobre la cantidad
# de archivos en el directorio actual.

open(INP, "ls |");
# Creacion de un nuevo gestor de archivos INP para pipe de entrada.
open(OUTPU, "| sendmail meeiras@intramed.net.ar");
# Creacion de un gestor de archivos para pipe de salida
print OUTPU "This message was delivery by KichiPage";

print "Content-type:text/html\n\n";


while (<INP>) {
    print OUTPU;
    }

print "El mensaje fue enviado correctamente...";

