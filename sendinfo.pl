#!/usr/bin/perl
# Este archivo envia un email a faturita con informacion sobre la cantidad
# de archivos en el directorio actual.

# Toma los datos del entorno.
$user = $ENV{'USER'};
$home = $ENV{'HOME'};

# ENV es el array que suministra el interprete perl para acceder a las
# variables de entorno de UNIX.



open(INP, "ls |");
# Creacion de un nuevo gestor de archivos INP para pipe de entrada.
open(OUTPU, "| mail faturita");
# Creacion de un gestor de archivos para pipe de salida
while (<INP>) {
    ++$files;
    }
print OUTPU "Informacion:  Estado de trabajo actual de $user";
print OUTPU "Hay $files archivos en el directorio que esta trabajando $home";

# print por defecto imprime a STDOUT, pero se puede decir a donde se quiere
#  redireccionar.

