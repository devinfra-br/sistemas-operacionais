#!/bin/bash

# Configurações
LOG_FILE="/var/log/disk_usage.log"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

# Verificar uso do disco
DISK_USAGE=$(df -h)

# Gravar no arquivo de log
echo "Data: $DATE" >> $LOG_FILE
echo "$DISK_USAGE" >> $LOG_FILE
echo "----------------------------------" >> $LOG_FILE

# Mensagem de sucesso
echo "Monitoramento de uso de disco registrado com sucesso"