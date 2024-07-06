#! /bin/bash

# Exercise 1 shell script by Slackjeff

# Use API of tinyurl for generate a short URL

# curl install ?

[[ $(which curl) ]] || { distro=$(grep -w "ID=.*" /etc/os-release | cut -d = -f 2); }

case "$distro" in
	ubuntu) apt update && apt upgrade && apt-get install curl ;;
	debian) apt update && apt upgrade && apt-get install curl ;;


# Capture user output
read -p "Digite a url: " url

[[ -z "$url"  ]] && { echo "Precisa passa uma URL..."; exit 1;}

generate_url=$(curl -s https://tinyurl.com/api-create.php?url=$url)

echo "Sua URL encurtada: $generate_url"
