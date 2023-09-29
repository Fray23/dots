import os
import shutil

def copy_config_files(config_dir, dest_dir):
    current_dir = os.getcwd()
    config_dir = os.path.join(current_dir, config_dir)
    dest_dir = os.path.expanduser(dest_dir)

    for root, dirs, files in os.walk(config_dir):
        rel_dir = os.path.relpath(root, config_dir)
        dest_root = os.path.join(dest_dir, rel_dir)

        if not os.path.exists(dest_root):
            os.makedirs(dest_root)

        for file in files:
            src_path = os.path.join(root, file)
            dest_path = os.path.join(dest_root, file)
            shutil.copy2(src_path, dest_path)

file_list = [
    ('.config', '~/.config'),
    ('home', '~/'),
]

for config_dir, dest_dir in file_list:
    copy_config_files(config_dir, dest_dir)
