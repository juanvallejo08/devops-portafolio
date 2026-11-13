#!/bin/bash
FECHA=$(date "+%Y-%m-%d %H:%M:%S")
DISCO=$(df -h / | awk 'NR==2 {print $5}')
RAM=$(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2 }')
echo "$FECHA - Uso de Disco: $DISCO | Uso de RAM: $RAM" >> reporte.log
