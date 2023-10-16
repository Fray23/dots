#!/bin/bash

backup_name=$(date +"%Y-%m-%d_%H-%M-%S")"_backup.tar.gz"
tar cfz "/home/fs/backups/$backup_name" /home/fs/Desktop/work /home/fs/Desktop/a79 /home/fs/Desktop/qute /home/fs/.ssh /home/fs/.config/chromium
tar cfz "/home/fs/backups/Pictures.tar.gz" /home/fs/Pictures
tar cfz "/home/fs/backups/Documents.tar.gz" /home/fs/Documents
