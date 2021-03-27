Title: Disabling your trackpad when a mouse is connected
Date: 2013-08-27 19:43
Author: Kevin
Tags: code, udev
Slug: disabling-your-trackpad-when-a-mouse-is-connected

Typing on my laptop often has the side effect of touching the trackpad and sending the cursor wildly off and inserting text elsewhere. This is highly irritating when programming. Thankfully there is a simple two line fix for GNU/Linux systems using udev. Simply add ```SUBSYSTEM=="input", KERNEL=="mouse[0-9]*", ACTION=="add", ENV{DISPLAY}=":0", ENV{XAUTHORITY}="/home/username/.Xauthority", RUN+="/usr/bin/synclient TouchpadOff=1"
SUBSYSTEM=="input", KERNEL=="mouse[0-9]*", ACTION=="remove", ENV{DISPLAY}=":0", ENV{XAUTHORITY}="/home/username/.Xauthority", RUN+="/usr/bin/synclient TouchpadOff=0"``` unplug and replug your mouse and you should be good to go.

[Source](https://wiki.archlinux.org/index.php/Synaptics#Disable_touchpad_upon_external_mouse_detection).
