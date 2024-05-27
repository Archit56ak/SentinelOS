#!/bin/bash
echo "TCP disable check"
# Check if TCP SYN Cookies are enabled
syn_cookies_enabled=$(sysctl -n net.ipv4.tcp_syncookies)

if [ "$syn_cookies_enabled" -eq 1 ]; then
    echo "Disabling TCP SYN Cookies..."
    sudo sysctl -w net.ipv4.tcp_syncookies=0
    echo "TCP SYN Cookies have been disabled."
else
    echo "TCP SYN Cookies are already disabled."
fi
