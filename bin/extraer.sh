#!/bin/bash

# Recorre todos los .zip y .rar del directorio actual
for archivo in *.zip *.rar; do
    # Evita errores si no existen archivos
    [ -e "$archivo" ] || continue

    # Extraer en el directorio actual
    7z x "$archivo" -y
done
