#!/bin/bash
function pause {
    echo "Appuyez sur ENTER pour continuer"
    read
}
function ADDUSER {
    clear
    sudo useradd -p $password $util

    echo -e "+-----------------------------+\n"
    echo -e "\e[37m$util ajouter\n\n"
    echo -e "\e[94m+-----------------------------+"

    pause
}

clear
echo -e "taper le nom d utilisateur: "
read util

echo "Taper le mot de passe: "
read password

ADDUSER
