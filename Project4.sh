#!/bin/bash
set -e

if [[ $EUID -ne 0 ]];
then
    echo "Please run this script as the root user."
    exit 1
fi

read -p "Enter the package name: " package

echo "Checking if the package is already installed..."

if dpkg -s "$package" >/dev/null 2>&1; then
    echo "$package is already installed."
    exit 0
else
    echo "Updating package list and installing $package..."
fi

apt-get update
apt-get install -y "$package"

read -p "Enter the service name: " service

systemctl start "$service"
systemctl status "$service"
