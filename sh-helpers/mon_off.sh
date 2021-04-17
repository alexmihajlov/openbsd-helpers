xrandr > /dev/null

if [ "`xrandr | grep VGA-1  | cut -d ' ' -f 2`" = "'connected'" ]
then
    xrandr --output VGA-1 --off
    xrandr --output HDMI-1 --off
    xrandr --output eDP-1 --auto 
else
    xrandr --output HDMI-1 --off
    xrandr --output DP-1 --off
fi    

feh --bg-scale ~/.wallpaper &
#xset m 60/10 0 &
