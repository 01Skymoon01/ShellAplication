#!/bin/bash
function pause {
    echo "Appuyez sur ENTER pour continuer"
    read
}
function checkPing {
	echo "Taper l'URL... "
	read URL

	ping -c 5 $URL
	pause
}

echo "Voici le ping ..."
checkPing
