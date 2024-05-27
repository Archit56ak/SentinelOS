#!/bin/bash

# Check if IP forwarding is disabled
forwarding_enabled=$(sysctl -n net.ipv4.ip_forward)

if [ "$forwarding_enabled" -eq 0 ]; then
  echo "Enabling IP forwarding..."
  sudo sysctl -w net.ipv4.ip_forward=1
  # Optional: Make the change persistent across reboots
  echo "net.ipv4.ip_forward=1" | sudo tee -a /etc/sysctl.conf
  echo "IP forwarding has been enabled."
else
  echo "IP forwarding is already enabled."
fi
