#!/usr/bin/perl


# Los arrays asociativos usan una clave y empiezan con %
%diasdelmes = (
    'Enero',31,
    'Febrero',28,
    'Marzo',31,
    'Abril',30,
    'Mayo',31,
    'Junio',30,
    'Julio',31,
    'Agosto',31,
    'Septiembre',30,
    'Octubre',31,
    'Noviembre',30,
    'Diciembre',31);
    
print "Hay $diasdelmes{'Enero'} en Enero\n";

    
# El operador keys(asArray) devuelve las claves del array utilizando una
# enumeracion de la tabla de hash que utiliza perl para almacenar las claves y
# sus valores.  Las claves son devueltas en un array normal@

# El operado values(asArray) devuelve un array con todos los valores contenidos
# en el array asociativo en cualquier orden.

# Se agrega un elemento mas al array asosiativo especificando su clave
$diasdelmes{'NuevoMes'}=200;

# El operador delete(array{clave}) elimina un elemento del array

# El operador undef(cualquier variable) elimina una varaible de la memoria
#   dejando disponible su espacio de almacenamiento.

delete $diasdelmes{'NuevoMes'};

@claves = keys(%diasdelmes);

foreach $i (@claves) {
    print "Hay $diasdelmes{$i} para $i\n";
    }

# El operador each array devuelve un par, su clave y el elemento asociado.

# El array ENV es un array asociativo donde estan las variables del entorno
# del sistema actual.

while ( ($var, $value) = each %ENV ) {
    print "$var = $value\n";
    }

    