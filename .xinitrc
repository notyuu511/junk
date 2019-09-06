export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
ibus-daemon -drx
export TERMINAL='urxvt'
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
# xrandr --output DVI-I-1 --left-of HDMI-1
xrandr --output DVI-D-1 --left-of HDMI-1
# Statusbar loop
while true; do
   xsetroot -name "  FALSE  $(sensors | grep -A 0 'Tdie' | cut -c16-22) $(date +" %Y年%m月%d日  %H:%M")"
   sleep 5    # Update time every 5s
done &
exec dwm
