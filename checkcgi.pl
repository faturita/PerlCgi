#!/usr/bin/perl
# Este archivo envia un email a faturita con informacion sobre la cantidad
# de archivos en el directorio actual.

# Apertura del archivo donde se guardaran los resultados
open(ENT, "> base.doc");
    
print STDOUT "Content-type:text/html\n\n";

print "<h1><center>";
print "Programa testeador de cgi.";
print "</center></h1>";

print "<CENTER>";
print "<font color='blue'>";

print "Tomados del gestor <>:";
while (<>) {
    print ENT ;
    print ;
    }
    
print "</font>";
print "<font color='green'>";

print "Tomados de <STDIN>:";

while (<STDIN>) {
    print ;
    }

print "</font>";
print "<font color='blue'>";

print "Tomados del entorno ENV";

$nombre = $ENV{'QUERY-STRING'};

print $nombre;


print "</font>";

print "</center>";
    


