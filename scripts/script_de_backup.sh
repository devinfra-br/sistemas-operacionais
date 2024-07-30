#!/bin/bash

# Configurações
MY_DIR="/home"
DEST_DIR="/backup"
DATE=$(date +%Y-%m-%d-%s)
BACKUP_FILE="backup-$DATE.tar.gz"

# Criar um backup
tar -zczf $DEST_DIR/$BACKUP_FILE $SOURCE_DIR

# Saida de Logs
echo "Backup criado com sucesso: $BACKUP_FILE"