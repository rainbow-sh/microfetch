#!/bin/sh
echo "
 \e[31m\e[7m👤\e[27m    $(whoami) \e[0m
 \e[32m\e[7m💿\e[27m    $(sed -n 's/^PRETTY_NAME="//p' /etc/os-release | cut -f1 -d'"') \e[0m
 \e[33m\e[7m🐧\e[27m    $(uname -r) \e[0m
 \e[34m\e[7m🐚\e[27m    $SHELL \e[0m
 \e[35m\e[7m💻\e[27m    $XDG_CURRENT_DESKTOP \e[0m
 \e[36m\e[7m⌛\e[27m    $(uptime -p | sed "s/up //") \e[0m
 \e[37m\e[7m📁\e[27m    $(echo "$(grep MemFree /proc/meminfo | sed "s/MemFree: //" | sed "s/ kB//")/1000" | bc)/$(echo "$(grep MemTotal /proc/meminfo | sed "s/MemTotal: //" | sed "s/ kB//")/1000" | bc) MB \e[0m
"