#!/bin/bash
FILENAME="$1"
FILE_PATH="$2"
URL="https://www.zack6849.com/uploads/$FILENAME"
rsync "$FILE_PATH" "zack6849.com:~/uploads/"
notify-send -t 2000 -i "/usr/share/icons/Numix/48/actions/up.svg" "<b>Upload Complete</b><hr>" "Link copied to clipboard."
echo $URL | xclip
