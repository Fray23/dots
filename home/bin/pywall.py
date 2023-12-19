#!/bin/python3

import os
import time
import sys

# path = '/home/fs/Pictures/pic/mafu_wallpaper/'
path = '/home/fs/Pictures/pic/new_hidpi_wallpaper'
favorite = '/home/fs/Pictures/pic/current_wallpaper/88133357_p24_master1200.jpg'

default_command = f'feh --randomize --bg-fill {path}'
favorite_command = f'feh --bg-fill {favorite}'

minute = 10

if len(sys.argv) > 1:

    if sys.argv[1] == '-w':
        while True:
            # os.system('feh --randomize --bg-fill /home/fs/Pictures/pic/current_wallpaper/')
            os.system(default_command)
            time.sleep(minute * 60)
    if sys.argv[1] == 'f':
        os.system(favorite_command)

    if sys.argv[1] == 'f1':
        os.system('feh --bg-fill /home/fs/Pictures/dabi-5k-my-hero-5120x2880-10375.jpg')

    if sys.argv[1] == 'black':
        p = '/home/fs/Pictures/blank.png'
        os.system('feh --bg-fill ' + p)

    if sys.argv[1] == 'dep1':
        p = '/home/fs/Pictures/wallaper/media_FIqVx6RaMAQbBvK.jpg'
        os.system('feh --bg-fill ' + p)

else:
    os.system(default_command)
