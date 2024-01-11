#!/bin/bash

reset="\x1B[0m"
alert="\e[5;30;42m"

chattr -i /home/aqua/Schreibtisch
chattr -i /home/aqua/Schreibtisch/*

rm /home/aqua/Schreibtisch/*

# add Citrix icon on Desktop
cat > /home/aqua/Schreibtisch/Citrix\ AQUA <<EOF
[Desktop Entry]
Encoding=UTF-8
Name=Citrix AQUA
Type=Link
URL=https://ctx.aqua-soziales.com
Icon=/usr/share/icons/aqua/Workspace.ico
EOF
chattr +i /home/aqua/Schreibtisch/Citrix\ AQUA

#Add Besser Leben Icon
cat > /home/aqua/Schreibtisch/AG\ Besser\ Leben <<EOF
[Desktop Entry]
Encoding=UTF-8
Name=AG Besser Leben
Type=Link
URL=https://besserleben.aqua-soziales.com
Icon=firefox
EOF
chattr +i /home/aqua/Schreibtisch/AG\ Besser\ Leben

# Add Schulung Icon
cat > /home/aqua/Schreibtisch/Schulung <<EOF
[Desktop Entry]
Encoding=UTF-8
Name=Schulung
Type=Link
URL=https://schulung.aqua-soziales.com/
Icon=/usr/share/icons/aqua/Workspace.ico
EOF
chattr +i /home/aqua/Schreibtisch/Schulung

echo -e "${alert}POGGERS${reset}"
echo -e "Es hat funktioniert! Bitte abmelden und die Icons überprüfen :)"
