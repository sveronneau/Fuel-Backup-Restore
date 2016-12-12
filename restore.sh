#!/bin/bash
# Restore a fuel node backup from backup file.
# Default location for Fuel backup is /var/backup/fuel
#
backup_folder="/var/backup/fuel/"
#
clear
echo
echo --- Backups
ls $backup_folder
echo
echo
echo Copy the BACKUP name you want to restore
echo
read backup_name
echo
to_be_restored=$(ls $backup_folder$backup_name/);
dockerctl restore $backup_folder$backup_name/$to_be_restored
echo
#