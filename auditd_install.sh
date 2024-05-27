#!/bin/bash

# Check if the script is run as root
if [ "$EUID" -ne 0 ]; then
    echo "Please run this script as root."
    exit 1
fi

# Check if auditd is installed
if ! command -v auditd &> /dev/null; then
    # Install auditd if it is not already installed
    apt-get update
    apt-get install -y auditd

    # Check if the installation was successful
    if [ $? -eq 0 ]; then
        echo "auditd has been installed successfully."
    else
        echo "Failed to install auditd. Please check your internet connection and try again."
        exit 1
    fi
else
    echo "auditd is already installed."
fi

if systemctl is-enabled auditd &> /dev/null; then
    echo "auditd service is already enabled."
else
    # Enable auditd service
    systemctl enable auditd

    # Check if the enabling was successful
    if [ $? -eq 0 ]; then
        echo "auditd service has been enabled successfully."
        # Restart the service to apply changes
        systemctl restart auditd
    else
        echo "Failed to enable auditd service."
        exit 1
    fi
fi
