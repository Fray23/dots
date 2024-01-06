#!/bin/python
import sys

def replace_line_in_file(filename, old_line, new_line):
    with open(filename, 'r') as file:
        data = file.readlines()

    # Замена строки
    for index, line in enumerate(data):
        if line.strip() == old_line:
            data[index] = new_line + '\n'
            break

    # Запись измененного содержимого обратно в файл
    with open(filename, 'w') as file:
        file.writelines(data)

if sys.argv[1] == '-s':
    replace_line_in_file('/home/fs/.config/kitty/kitty.conf', 'font_size 11', 'font_size 16')
    replace_line_in_file('/home/fs/bin/rofi', 'rofi -modi drun -show drun -show-icons -icon-theme Papirus -dpi 100', 'rofi -modi drun -show drun -show-icons -icon-theme Papirus -dpi 150')
    replace_line_in_file('/home/fs/.config/chromium-flags.conf', '--force-device-scale-factor=1', '--force-device-scale-factor=1.5')
    replace_line_in_file('/home/fs/.Xresources', 'Xcursor.size: 24', 'Xcursor.size: 32')
    replace_line_in_file('/home/fs/bin/rofi', '# while read -r line; do export "$line"; done < /home/fs/scale_vars', 'while read -r line; do export "$line"; done < /home/fs/scale_vars')
elif sys.argv[1] == '-d':
    replace_line_in_file('/home/fs/.config/kitty/kitty.conf', 'font_size 16', 'font_size 11')
    replace_line_in_file('/home/fs/bin/rofi', 'rofi -modi drun -show drun -show-icons -icon-theme Papirus -dpi 150', 'rofi -modi drun -show drun -show-icons -icon-theme Papirus -dpi 100')
    replace_line_in_file('/home/fs/.config/chromium-flags.conf', '--force-device-scale-factor=1.5', '--force-device-scale-factor=1')
    replace_line_in_file('/home/fs/.Xresources', 'Xcursor.size: 32', 'Xcursor.size: 24')
    replace_line_in_file('/home/fs/bin/rofi', 'while read -r line; do export "$line"; done < /home/fs/scale_vars', '# while read -r line; do export "$line"; done < /home/fs/scale_vars')
