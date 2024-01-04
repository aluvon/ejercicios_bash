#!/bin/bash
fecha=$(date +%d-%m-%Y)
tar -cvzf /root/copia_etc_$fecha.tgz /etc
