
#!/usr/bin/env bash

echo "Hola, como estas!"  #Esta es la sintaxis para crear una especie de print

variable="Some string" #Esta es la sintaxis para crear variables(es importante no usar espacios antes del signo de igual) 

echo "$variable" #Para usar una variable hay que poner el signo de $


# Para obtener la cantidad de caracteres se utiliza:
echo "${#variable}" 


array=(uno dos tres cuatro cinco seis) #sintaxis para crear una lista

echo "${array[0]}" #imprimir el elemento de la posición 0 de la lista(puedes cambiar el 0 a la posicion que desees)

echo "${array[@]}" #imprimir todos los elementos del array



for item in "${array[@]}"; do  #sintaxis para crear un ciclo for
    echo "$item"
done


echo "What's your name?" #Como pedir datos al usuario
read name


if [[ "$name" != "$USER" ]]; then                #Sintaxis para crear condicionales
    echo "Your name isn't your username"
else
    echo "Your name is your username"
fi

# Se utilizan los operadores and y or con && y ||:
read age
if [[ "$name" == "Steve" ]] && [[ "$age" -eq 15 ]]; then
    echo "This will run if $name is Steve AND $age is 15."
fi

if [[ "$name" == "Daniya" ]] || [[ "$name" == "Zach" ]]; then
    echo "This will run if $name is Daniya OR Zach."
fi
# No es necesario colocar los comparadores con los signos, se puede con estos equivalentes:
# -ne - not equal
# -lt - less than
# -gt - greater than
# -le - less than or equal to
# -ge - greater than or equal to

# El operador `=~` se utiliza para comparar con una serie de parametos:
# Primero pide que empiece con texto maximo 20 antes del arroba
# Despues pide texto con una longitud minima de 2, para temrinar con "Com", "net" o "org"
email=me@example.com
if [[ "$email" =~ [a-z]{,20}+@[a-z]{2,}\.(com|net|org) ]]   #ejemplo de validacion de correo electronico
then
    echo "Valid email!"
fi

# Este es equivalente a switch en otros lenguajes:
case "$Variable" in
    # Evalua el valor en cada caso.
    0) echo "There is a zero.";;
    1) echo "There is a one.";;
    *) echo "It is not null.";; 
esac
# Para cerrarlo es importante escribir el comando inverso.

# Este es un ciclo for que se repetira 3 veces comenzando desde el 1 hasta el 3.
for Variable in {1..3}
do
    echo "$Variable"
done
# => 1
# => 2
# => 3

# Tambien se puede utilizar de forma convencional con Inicialozador: Parada: accion:
for ((a=1; a <= 3; a++))
do
    echo $a
done
# => 1
# => 2
# => 3

# Asi mismo se puede utilizar para archivos
for Variable in file1 file2
do
    cat "$Variable"
done

# Tambien para obtener datos de los comandos individualmente.
# cat imprime lo que tiene el archivo dentro.
for Output in $(ls)
do
    cat "$Output"
done



# Sintaxis para la creacion de un ciclo while:
while [ true ]
do
    echo "loop body here..."
    break
done

# Sintaxis para declarar funciones en bash
function foo ()
{
    echo "Arguments work just like script arguments: $@"
    echo "And: $1 $2..."
    echo "This is a function"
    returnValue=0    # Variable values can be returned
    return $returnValue
}
# Para añadir argumentos solo se le agrega un espacio
foo arg1 arg2

# Para capturar el valor de retorno se utiliza $?
resultValue=$?


# Tambien se pueden declarar sin la palabra function antes
bar ()
{
    echo "Another way to declare functions!"
    return 0
}