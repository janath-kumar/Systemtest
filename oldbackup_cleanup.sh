SOURCE_DIR="/var/www/html"
BACKUP_DIR="/home/janath"
RETENTION_DAYS=7
DATE=$(date +"%Y-%m-%d")
BACKUP_FILE="html-backup-$DATE.tar.gz"


mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_DIR/BACKUP_FILE" -C "$(dirname "$SOURCE_DIR")" "$(basename "$SOURCE_DIR")"

echo "Backup is completed: $BACKUP_DIR/$BACKUPFILE"

find "BACKUP_DIR" -name "html-backup-*.tar.gz" -type f -mtime +$REDENTION_DAYS - exec rm -f {} \;
echo "Old backups older than $RETENTION_DAYS deleted from the $BACKUP_DIR"
