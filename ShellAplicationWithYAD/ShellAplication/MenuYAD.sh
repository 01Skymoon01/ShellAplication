yad --title "SHELL APPLICATION" \
--image icons8-hacking-64.png --image-on-top \
--text="<span foreground='blue'><b><big>
+________________________[] Qu'est ce que voulez vous faire?________________________+

				[1] Lister les utilisateur simples.

				[2] Modifier le mot de passe d'un utilisateur

				[3] Decrypter et afficher le mot de passe d'un utilisateur

				[4] Sauvegarder le mot de passe crypté dans un fichier.txt

				[5] Afficher ce le help

[] Selectionner un chiffre...

</big></b></span>" \
--form --width=250 --text="Choose a browser to launch:" \
--field ="s1.png":fbtn "chromium" \
--field="s2.png":fbtn "firefox" \
--field="Dillo":fbtn "dillo" \
--button=gtk-cancel:1

choice=$?

if [[ $choice -eq 1 ]]; then
	source simpleUser.sh

elif [[ $choice -eq 2 ]]; then
	source ModifierMotDePasseUser.sh

elif [[ $choice -eq 3 ]]; then
	source Decrypter.sh

elif [[ $choice -eq 4 ]]; then
	source help.sh

fi


