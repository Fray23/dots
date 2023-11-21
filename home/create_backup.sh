#!/bin/bash

backup_name=$(date +"%Y-%m-%d_%H-%M-%S")"_backup.tar.gz"
tar cf "/home/fs/backups/$backup_name" /home/fs/Desktop/work /home/fs/Desktop/a79 /home/fs/Desktop/qute /home/fs/.ssh /home/fs/.config/chromium
tar cf "/home/fs/backups/Pictures.tar" /home/fs/Pictures
tar cf "/home/fs/backups/Documents.tar" /home/fs/Documents
