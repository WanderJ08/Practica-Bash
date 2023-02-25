echo "kloq Joan"; #imprimir en pantalla
echo "kloq manito"; echo "parabaran";  #imprimir en pantalla con salto de linea

nombre="Albertico"; #Declarar una variable
nombre2="Ramondino";
num1=10;
length=7
num2=15;
empleados=(Wander Alberto  Roberto Juan Joan Vinicius);

echo "";
echo "mañana es cumple de $nombre" #Llamar una variable

echo "${nombre/Al/san}"; #Cambiar los parametros de la variable a los que establezcas

let suma=$num1+$num2 #hacer operaciones aritmeticas

echo "$suma"

echo "${nombre:0:length}" #Imprimir en pantalla desde el parametro que establezas hasta el otro que establezcas

echo "${nombre: -5}" #Imprimir en pantalla desde la ultima letra 


echo "${#nombre}" #Imprimir numero de caracteres que posee



echo "${empleados[0]}"; #Imprimir posicion 0 del array

echo "${empleados[2]}"; #Imprimir posicion 2 del array

echo "${#empleados[0]}"; #Imprimir numero de elementos en el array

echo "${empleados[0]:3:2}"