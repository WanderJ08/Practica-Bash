
#!/usr/bin/env bash
#Crear un programa en el que pueda ir digitando numeros hasta que encuentre el numero que tengo establecido

Meta=7;
echo "Digite un numero: "
read opcion

while [ "$opcion" != "$Meta" ]
do
    clear
    echo "Este numero no es el indicado"
    echo "Digite otro numero: "
    read opcion
done
clear
echo "Felicidadeeeessss"
echo "Haz elegido el numero adecuado"
