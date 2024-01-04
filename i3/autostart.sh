#!/bin/sh

# Scratchpad: terminal, Vk, Telegram
i3-msg 'workspace 1'

i3-msg 'exec alacritty'
while [[ `wmctrl -l | grep v1nda@arch:~` != *v1nda@arch:~* ]]
do
	sleep 1
done

#i3-msg 'exec vk'
#while [[ `wmctrl -l | grep VK` != *VK* ]]
#do
#	sleep 1
#done

i3-msg 'exec telegram-desktop'
while [[ `wmctrl -l | grep Telegram` != *Telegram* ]]
do
	sleep 1
done

# i3-msg 'exec kitty "bashtop"'
i3-msg 'exec alacritty -e bashtop'
while [[ `wmctrl -l | grep BashTOP` != *BashTOP* ]]
do
        sleep 1
done

sleep 1
i3-msg 'focus parent; floating enable; move absolute position 400 100; move to scratchpad'
i3-msg 'scratchpad show; resize set 1400 800; scratchpad show'

# 1 workspace
i3-msg 'workspace 1'

i3-msg 'exec firefox'
while [[ `wmctrl -l | grep Firefox` != *Firefox* ]]
do
	sleep 1
done

# i3-msg 'exec kitty "mc"'
i3-msg 'exec alacritty -e mc'
while [[ `wmctrl -l | grep mc` != *mc* ]]
do
	sleep 1
done

i3-msg 'exec alacritty'
while [[ `wmctrl -l | grep "0 arch v1nda@arch:~"` != *0 arch v1nda@arch:~* ]]
do
	sleep 1
done

