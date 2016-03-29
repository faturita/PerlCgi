#!/usr/bin/perl
# addme.pl
# Este programa es un procesador de formularios.
# Los datos son tomados de la entrada estandar.
# Especialmente disenado para CGI
# Los valores tomados si son aceptados, los graba en el archivo
#  base.dat con el formato de /etc/passwd
# De los datos de entrada, el primer campo es tomado como clave primaria
# de la base.
$entrada=<>;
# Creacion del gestor de archivos para la salida del programa.
open (FIL, ">> planilla.doc");
# El caracter & separa cada uno de los pares "campo=valor"
@pairs=split(/&/,$entrada);
# Cada par hay que separarlo por el =
print "Content-type:text/html\n\n";
print "<body bgcolor=blue text=white>";
print "<h1>Su suscripcion ha sido realizada con exito...</h1><br>";
print "Dentro de algunos dias recibira un email donde se le especificara cuales son";
print "sus datos personales, y sus datos como usuario de KichiPage.<br>";
print "Resumen:";
foreach $count (0 .. $#pairs) {
    # Devuelve los dos datos del par.	
    @pair=split(/=/,$pairs[$count]);
    if ( $count != "0" ) {
	print FIL ":";
	}
    @data=split(/\+/,$pair[1]);
    $value="@data";	
    print FIL "$value";
    print "$value";
    }
print FIL "\n";
print "<br>";
print "<br><center><b>Bienvenido a KichiPage</b></center>";
print "</body>";

