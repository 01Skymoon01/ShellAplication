#NOUR KHEDHER + ERIJ TARHOUNI
#!/bin/bash

DARKGRAY='\033[1;30m'
RED='\033[0;31m'
LIGHTRED='\033[1;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
LIGHTPURPLE='\033[1;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
DEFAULT='\033[0m'




 function pause {
    echo "Appuyez sur ENTER pour continuer"
    read
}





rep=1
while [[ $rep -eq 1 ]] ; do
    clear
echo -e "$LIGHTPURPLE"
echo -e "\t\t/\___/\    _    _ __          __   /\___/\ $LIGHTPURPLE"
echo -e "\t\t\ -.- /   | |  |  \ \        / /   \ -.- / $LIGHTPURPLE"
echo -e "\t\t -.^.-    | |__| | \ \  /\  / /     -.^.- $LIGHTPURPLE"
echo -e "\t\t  \_/     |  __  |  \ \/  \/ /       \_/  $LIGHTPURPLE"
echo -e "\t\t          | |  | |   \  /\  /             $LIGHTPURPLE"
echo -e "\t\t|_| |_|   |_|  |_|    \/  \/       |_| |_| "
echo -e "                                  "
echo -e "\e[35m\e[1m\t      HELLO WORLD                       HACK THE WORLD\n"
echo -e "\t  .-----------------------------------------------------."
echo -e "\t  | [1] Gestion utilisateurs                            |"
echo -e "\t  |                                                     |"
echo -e "\t  | [2] Decrypter et afficher un mot de passe d'un user |"
echo -e "\t  |                                                     |"
echo -e "\t  | [3] Network                                         |"
echo -e "\t  |                                                     |"
echo -e "\t  | [4] Afficher le help                                |"
echo -e "\t  |                                                     |"
echo -e "\t  | [5] Quitter                                         |"
echo -e "\t  .-----------------------------------------------------.\e[49m"
    read choix

    case $choix in
        1) echo -e "\e[94m"
            source gestionUser.sh
            rep=1;;

        2) echo -e "$GREEN"
            source gestionDecrypter.sh
            rep=1;;

        3) echo -e "$WHITE"
            source gestionHost.sh
            rep=1;;

        4) echo -e "$WHITE"
            source help.sh
            rep=1;;

        5)  clear
         echo -e "$WHITE BYE BYE"
          rep=0 ;;

        *)
            echo "Erreur de saisie";;
    esac
done
