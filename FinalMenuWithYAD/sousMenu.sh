function GestionUsers {

	yad --window-icon="/root/git_workspace/ShellAplication/FinalMenuWithYAD/icons8-hacking-64.png" \
	--title "Gestion des utilisateurs" \
	--image /root/git_workspace/ShellAplication/FinalMenuWithYAD/users.png --image-on-top \
	--text-info --back=black --fore=white --margins=70 --width=800 --height=300 --center < gestionUsers.txt \
	--buttons-layout=center \
	--button=" One!/root/git_workspace/ShellAplication/FinalMenuWithYAD/s1.png":1 \
	--button=" Two!/root/git_workspace/ShellAplication/FinalMenuWithYAD/s2.png":2 \
	--button=" Three!/root/git_workspace/ShellAplication/FinalMenuWithYAD/s3.png":3 \
	--button="Return!/root/git_workspace/ShellAplication/FinalMenuWithYAD/return.png":4

	choice=$?

	if [[ $choice -eq 1 ]]; then
		source simpleUser.sh
		MenuGlobal

	elif [[ $choice -eq 2 ]]; then
		source ModifierMotDePasseUser.sh
		MenuGlobal

	elif [[ $choice -eq 3 ]]; then
		source addUser.sh
		MenuGlobal

	elif [[ $choice -eq 4 ]]; then
		MenuGlobal
	fi
}

function Decryptage {
	yad --window-icon="/root/git_workspace/ShellAplication/FinalMenuWithYAD/icons8-hacking-64.png" \
	--image /root/git_workspace/ShellAplication/FinalMenuWithYAD/crypting.png --image-on-top \
	--title "Decryptage" \
	--text-info --back=black --fore=white --margins=70 --width=800 --height=300 --center < decryptage.txt \
	--buttons-layout=center \
	--button=" One!/root/git_workspace/ShellAplication/FinalMenuWithYAD/s1.png":1 \
	--button=" Two!/root/git_workspace/ShellAplication/FinalMenuWithYAD/s2.png":2 \
	--button="Return!/root/git_workspace/ShellAplication/FinalMenuWithYAD/return.png":3

	choice=$?

	if [[ $choice -eq 1 ]]; then
		source Decrypter.sh
		MenuGlobal

	elif [[ $choice -eq 2 ]]; then
	 source decrypter2.sh
	 MenuGlobal

	elif [[ $choice -eq 3 ]]; then
		MenuGlobal
	fi
}

function GestionReseau {
	yad --window-icon="/root/git_workspace/ShellAplication/FinalMenuWithYAD/icons8-hacking-64.png" \
	--image /root/git_workspace/ShellAplication/FinalMenuWithYAD/network.png --image-on-top \
	--title "Gestion des réseaux" \
	--text-info --back=black --fore=white --margins=70 --width=800 --height=300 --center < network.txt \
	--buttons-layout=center \
	--button=" One!/root/git_workspace/ShellAplication/FinalMenuWithYAD/s1.png":1 \
	--button=" Two!/root/git_workspace/ShellAplication/FinalMenuWithYAD/s2.png":2 \
	--button="Return!/root/git_workspace/ShellAplication/FinalMenuWithYAD/return.png":3

	choice=$?

	if [[ $choice -eq 1 ]]; then
		source checkPing.sh
		MenuGlobal

	elif [[ $choice -eq 2 ]]; then
		source MachineConnectee.sh
		MenuGlobal

	elif [[ $choice -eq 3 ]]; then
		MenuGlobal
	fi

}


function MenuGlobal {
	yad --width="500" --height="500" --title "SHELL APPLICATION" \
	--window-icon="/root/git_workspace/ShellAplication/FinalMenuWithYAD/icons8-hacking-64.png" \
	--image /root/git_workspace/ShellAplication/FinalMenuWithYAD/hacker.jpg --width="1024" --height="500" \
	--buttons-layout=center \
	--button="Gestion des utilisateurs!/root/git_workspace/ShellAplication/FinalMenuWithYAD/users.png":1 \
	--button="Decryptage!/root/git_workspace/ShellAplication/FinalMenuWithYAD/crypting.png":2 \
	--button="Gestion du réseau!/root/git_workspace/ShellAplication/FinalMenuWithYAD/network.png":3 \
	--button="Help!/root/git_workspace/ShellAplication/FinalMenuWithYAD/help.png":4 \
	--button="EXIST!/root/git_workspace/ShellAplication/FinalMenuWithYAD/exit.png":5

choix=$?

if [[ $choix -eq 1 ]]; then
	GestionUsers
fi

if [[ $choix -eq 2 ]]; then
	Decryptage
fi

if [[ $choix -eq 3 ]]; then
	GestionReseau
fi

if [[ $choix -eq 4 ]]; then
	yad --title="HELP" \
	--text-info --back=black --fore=white --margins=70 --width=900 --height=550 --center < help.txt
	MenuGlobal
fi

if [[ $choix -eq 5 ]]; then
	exit
fi
}
#user=`$(id -u -n)`
#user=`grep $2 /etc/passwd | cut -d: -f3`

if [[ $1 == "" ]]; then
	MenuGlobal

elif [[ $1 == "-l" ]]; then
    source simpleUser.sh $1

elif [[ $1 == "-p" ]]; then
   source ModifierMotDePasseUser.sh

elif [[ $1 == "-decrypt" && $2 == "-s" ]]; then
    source Decrypter.sh

elif [[ $1 == "-help" ]]; then
	source help.sh


fi
#wmctrl -r 'SHELL APPLICATION'S -e '0,6,0,1000,500'
