#!/bin/python3

import os
import time
import sys

path = '/home/fs/Pictures/pic/current_wallpaper'
favorite = '/home/fs/Pictures/pic/current_wallpaper/88133357_p24_master1200.jpg'

default_command = f'feh --randomize --bg-center {path}'
favorite_command = f'feh --bg-center {favorite}'

minute = 10

if len(sys.argv) > 1:

    if sys.argv[1] == '-w':
        while True:
            # os.system('feh --randomize --bg-fill /home/fs/Pictures/pic/current_wallpaper/') 
            os.system(default_command)
            time.sleep(minute * 60)
    if sys.argv[1] == '-f':
        os.system(favorite_command)
else:
    os.system(default_command)
