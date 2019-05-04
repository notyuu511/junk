#!/bin/bash
XRE=$HOME/.Xresources
line=$(sed -n '42p' $XRE)
if [[ "$line" =~ true ]]; then
  sed -i '42s/true/false/g' ~/.Xresources
  echo "BLINDS ON"
else
  sed -i '42s/false/true/g' ~/.Xresources
  echo "BLINDS OFF"
fi
xrdb $XRE
