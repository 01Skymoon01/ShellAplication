#NOUR KHEDHER + ERIJ TARHOUNI
#!/bin/bash
function pause {
   echo "Appuyez sur ENTER pour continuer"
   read
}
function Decrypter {
  if [[ $id -ge 1000 && $id -le 60000  ]]  ; then
    sudo unshadow /etc/passwd /etc/shadow > passwd.txt
    statment=`sudo john -show -users:$util passwd.txt | cut -d : -f2`
    echo "*******Le mot de passe est=> $statment"

  sudo rm passwd.txt

#sauvegarder lesmots de passe ,
  echo "voulez vous l enregister? [o;n]"
  read rep
    if [ $rep = "o" ] ; then
    sudo unshadow /etc/passwd /etc/shadow > passwd.txt
    sudo john -show -users:$util passwd.txt | cut -d : -f2  > password.txt
    sudo rm passwd.txt
    echo "(*_*)/ enregister (*_*)/"
    fi

  else
      echo -e "ERROR! L'utilisateur n'existe pas"
  fi
  pause
}

clear
echo -e "taper le nom d utilisateur: "
read util
id=`grep $util /etc/passwd | cut -d : -f3`
Decrypter
