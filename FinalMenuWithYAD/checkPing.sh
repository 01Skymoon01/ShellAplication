function checkPing {
	echo "Taper l'URL... "
	read URL

	ping -c 5 $URL
}

echo "Voici le ping ..."
checkPing