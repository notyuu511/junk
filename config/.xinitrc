[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources
# jap language support
fcitx -d
# Statusbar loop
while true; do
xsetroot -name "$(date +"%Y年%m月%d日 %H:%M") 櫓三年竿七年"
sleep 5    # Update time every minute
done &
# start urxvt daemon
urxvtd -q -o -f
exec dwm
