#/bin/bash

grim -g "$(slurp)" $(xdg-user-dir PICTURES)/Screenshots/$(date +'%s.png') && wl-copy < "$_"