#!/bin/bash
# ME FALTARIA PODER REALIZAR ALGO PARA QUE NO CUENTE A LOS USUARIOS REPETIDOS PARA QUE LOS CUENTE SIEMPRE COMO 1 SOLO.

# Agregar la siguiente linea "sin almoadilla" a lo ultimo del fichero /etc/crontab:
#*/2 *   * * *   root    /script/./ejercicio8.sh


w | cut -d " " -f1 >> /home/admin01/Escritorio/temp.txt

datos=$(grep -v ^[USUARIO] /home/admin01/Escritorio/temp.txt)
echo "Los usuarios conectados son: "$datos >> /tmp/usuarios.txt

contador=1
for i in $datos;
do
	if [[ $i -eq "USUARIO" ]]; then
	((contador++))
	fi
done
echo "La cantidad de usuarios son: "$contador >> /tmp/usuarios.txt
echo "Horario actual: "`date` >> /tmp/usuarios.txt
echo "" >> /tmp/usuarios.txt

rm /home/admin01/Escritorio/temp.txt
