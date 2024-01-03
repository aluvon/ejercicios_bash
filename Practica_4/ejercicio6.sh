#!/bin/bash
# Agregar la siguiente linea "sin almoadilla" a lo ultimo del fichero /etc/crontab:
#10 *    * * *   root    /script/./ejercicio6.sh

echo "`w`"  >> /var/log/historial.txt
