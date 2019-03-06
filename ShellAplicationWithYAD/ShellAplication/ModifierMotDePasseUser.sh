#NOUR KKHEDHER
#!/bin/bash
 function pause {
    echo "Appuyez sur ENTER pour continuer"
    read
}
function Modifer {

  if [[ $id -ge 1000 && $id -le 60000  ]]  ; then
    echo -e "\t-------------------------\*-*/---------------------------\n"
        passwd $util
     echo -e "\t--------------------------------------------------------\n"
    else
      echo -e "\t--------------------------------------------------------\n"
        echo -e "\033[0;31m\t\tERROR! L'utilisateur n'existe pas"
      echo -e "\t--------------------------------------------------------\n"
    fi
    pause
}
clear

  echo -e "TAPEZ LE NOM DU USER: "
   echo -e "\033[1;37m"
    read util

  id=`grep $util /etc/passwd | cut -d : -f3`
  Modifer
