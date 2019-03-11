#!/bin/bash
function pause {
    echo "Appuyez sur ENTER pour continuer"
	read
}

function SimpleUser {
    clear
    echo -e "\n\e[1m    HERE ARE THE SIMPLE USER: \n"
    stat=`getent passwd {1000..6000} | cut -d : -f1`
    echo -e "+-----------------------------+\n"
    echo -e "\e[37m$stat\n\n"
    echo -e "\e[94m+-----------------------------+"

    pause
}

SimpleUser
