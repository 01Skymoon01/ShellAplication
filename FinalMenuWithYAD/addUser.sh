function addUser {
	echo "Donner le nom du nouveau utlisateur:"
	read user

	echo "Taper le mot de passe: "
	read password

	sudo useradd -p $password $user
}

addUser