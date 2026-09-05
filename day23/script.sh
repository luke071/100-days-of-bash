# backup.sh

SOURCE="/etc"
DEST="/backup"

mkdir -p "$DEST"

tar -czf "$DEST/etc-$(date +%F).tar.gz" "$SOURCE"

echo "Backup completed"