#!/bin/bash
# HomeAssistant Backup Script
BACKUP_DIR="/opt/ha-backups"
mkdir -p "$BACKUP_DIR"
cd /config
tar -czf "$BACKUP_DIR/ha-backup-$(date +%Y%m%d).tar.gz" .
find "$BACKUP_DIR" -name "*.tar.gz" -mtime +7 -delete
