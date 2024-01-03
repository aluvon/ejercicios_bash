#!/bin/bash
# Agregar la siguiente linea "sin almoadilla" a lo ultimo del fichero /etc/crontab:
#@reboot         root    /script/./ejercicio4.sh
date >> /var/log/reinicios.txt
