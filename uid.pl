#!/usr/bin/perl
# Este programa busca en /etc/passwd el numero de usuario.


# Este programa utiliza las variables $123456.... que se forman al identificarse
#   un patron.  Estas variables estan separadas por : dentro de /1 en el buffer
#   de memoria que se utiliza.  En este caso $0 es el username.


$uname=$ENV{'LOGNAME'};
open(PASSWD,"/etc/passwd") || die "No se puede acceder a /etc/passwd\n";
while (<PASSWD>) {
    if ( /^$uname:.*: ([0-9]+) : ([0-9]+):/ ) {
	$uid = $1;
	$gid = $2;
	print "uid=$uid($uname) gid=$gid\n";
	}
    }
    	