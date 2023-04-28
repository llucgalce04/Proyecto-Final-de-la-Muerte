#!/bin/bash


DB_NAME="usersdatabase"
BACKUP_FILE="$DB_NAME.sql"

#Compresion + fecha
COMPRESSED_FILE="$DB_NAME-$(date +%Y%m%d).tar.gz"

BACKUP_DIR="/home/enti/backup_DB"

#Directorio de logs
LOG_DIR="/var/log"

#Archivo de log
LOG_FILE="$LOG_DIR/$DB_NAME-backups.log"

#Volcar DB
mysqldump $DB_NAME > $BACKUP_DIR/$BACKUP_FILE

#Comprimir backup
tar -czvf $BACKUP_DIR/$COMPRESSED_FILE $BACKUP_DIR/$BACKUP_FILE

#Eliminar backup sin compresion
rm $BACKUP_DIR/$BACKUP_FILE

#MD5 del archivo comprimido
md5sum $BACKUP_DIR/$COMPRESSED_FILE > $BACKUP_DIR/$DB_NAME.md5

#Registrar la fecha y hora de la copia de seguridad en el log
echo "$(date +%Y-%m-%d\ %H:%M:%S) Backup realizado con éxito" >> $LOG_FILE

