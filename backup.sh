#!/bin/bash

SOURCE_DIR="/var/www/html"
BACKUP_DIR="/home/janath"
DATE=$(date +"%Y-%m-%d")
BACKUP_FILE="html-backup-$DATE.tar.gz"


mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_DIR/BACKUP_FILE" -C "$(dirname "$SOURCE_DIR")" "$(basename "$SOURCE_DIR")"

echo "Backup is completed: $BACKUP_DIR/$BACKUPFILE"
