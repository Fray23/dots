#!/bin/bash

backup_name=$(date +"%Y-%m-%d_%H-%M-%S")"_main_backup.tar.gz"
tar cf "/home/fs/backups/$backup_name" /home/fs/Desktop/work /home/fs/Desktop/a79 /home/fs/.ssh /home/fs/.config/chromium
tar cf "/home/fs/backups/Pictures.tar" /home/fs/Pictures
tar cf "/home/fs/backups/Documents.tar" /home/fs/Documents
tar cf "/home/fs/backups/aur_app.tar" /home/fs/_app
