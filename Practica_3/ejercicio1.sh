#!/bin/bash
echo "Hola estos son los ultimos 10 usuarios que iniciaron sesion en el sistema:"
last -10 | egrep "[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*"
