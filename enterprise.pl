#!/usr/bin/perl
print "Como te llamas?:";
# Chop elimina el ultimo caracter de $name


chop($name=<STDIN>);


# Se usa el operador de identificacion que sirve para verificar junto con el
#  operador de patrones que la cadena kirk se encuentre en $name.  El operador
#  final i (similiar que o) sirve para indicar que no se haga distincion entre
#  mayusculas y minusculas.  El operador $ al final de la cadena indica preci-
#  samente que se desea que la palabra kirk se encuentre al final de la cadena
#  $name

if ( $name =~ /kirk$/i ) {
    system 'stty', '-echo';
    print "Introduce la secuencia de destruccion final: ";
    chop($password = <STDIN>);
    while ( $badattempts < 2 ) {
	if ( $password ne "000destruct0" ) {
	    ++$badattempts;
	    print "\nSecuencia de destruccion invalida.  Try again:";
	    chop($password = <STDIN>);
	    }
	else
	    {
	    print "\nSecuencia de destruccion aceptada.\n";
	    print "El enterprise sera destruido en 60 segundos.\n";
	    #    La orden system sirve para darle ordenes especificas al sistema UNIX.
	    system 'stty','echo';
	    exit 1;
	    }
	}
    system 'stty','echo';
    die "\nOlvidaste la secuencia....?\n";
    }
else
    {
    die "$name no tienes la autoridad para destruir el enterprise.\n";
    }
        	    	    
