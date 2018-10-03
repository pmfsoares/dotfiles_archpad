#!/bin/bash	
 layout=$(echo $(setxkbmap -query | grep layout) | sed 's/layout: //g')	
 if [ "$layout" == "gb" ] || [ "$layout" == "us" ]; then	
  eval$(setxkbmap pt)	
elif [ "$layout" == "pt" ]; then	
  eval$(setxkbmap gb)	
fi	
 layoutnew="$((setxkbmap -query | grep layout) | sed 's/[[:blank:]]//g')"	
eval$(notify-send $layoutnew)
