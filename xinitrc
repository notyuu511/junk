[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources
fcitx -d
# Statusbar loop
while true; do
   xsetroot -name "$( date +"%F %R" ) 櫓三年竿七年"
   sleep 1m    # Update time every minute
done &
exec dwm
