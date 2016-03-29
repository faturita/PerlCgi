#!/usr/bin/perl
# vertp.pl
# UNLM Laboratorios de Fisica.
#######################################################################
# Este SCRIPT Perl funciona solo para servidores que soporten Perl 5.00
#
# Archivos generados:
#		alumnos.log  -  Los datos de los alumnos que chequearon
#				los valores.
#
# Archivos de lectura:
#		TP.db



$entrada=<>;

# Creacion del gestor de archivos para la salida del programa.
open (FIL, ">> alumnos.log");

# El caracter & separa cada uno de los pares "campo=valor"
@pairs=split(/&/,$entrada);

# Cada par hay que separarlo por el =

$tp=0;

print "Content-type:text/html\n\n";
print "<body bgcolor=blue text=white>";
print "<h1>Consulta de Valores de TP's</h1><br>";
print "Resultados de la consulta realizada:<br>";
foreach $count (0 .. $#pairs) {
    # Devuelve los dos datos del par.
    @pair=split(/=/,$pairs[$count]);
    if ( $count != "0" ) {
	print FIL ":";
	}
    @data=split(/\+/,$pair[1]);
    @data2=split(/\+/,$pair[0]);

    $campo="@data2";
    $value="@data";

    if ( $campo eq "TP") {
	$tp = $value;
	}



    # Graba en el archivo log quienes son los que chequearon los valores.
    print FIL $value;

    }

open (DAT,"< TP.db");

print "<br><font face='Times New Roman' color='red'>TP a buscar:$tp</font><br>";

$active="0";
while (<DAT>) {
    if ( $_ eq ">$tp") {
	print "<B>TP $tp Encontrado....</B>";
	$active="1";
	}
    if ( $active eq "1" ) {
	if ( ( $_ eq "<\n" ) || ( $_ eq "<" ) ) {
	    print "</body>";
	    print "</html>";
	    $active="3";
	    }
	else
	    {
	    if ( $_ eq "-\n" ) {
		print "\n";
		}
	    else
		{
		print ;
		print " ";
		}
	    }
	}

    }

if ($active eq "0") {
    print "<h2>No se ha encontrado el TP solicitado.</h2>";
    print "</body>";
    print "</html>";
    }


# Fin del codigo
# Estructura del archivo TP.db
#    >numeroTP
#    variable
#    datos
#    -
#    varialbe
#    datos
#    <
# Es importante el caracter \n al finalizar cada linea para su utilizacion en los
# gestores de archivos.
