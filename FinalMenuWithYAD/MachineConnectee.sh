function MachineConn {
	
	IP=`ifconfig eth0 | awk '/inet / {print $2}' | cut -d ':' -f2` #Recupérer l'adresse IP
	
	echo "Scanning results ..."

	nmap -sP $IP/24
}

MachineConn